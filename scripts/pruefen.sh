#!/usr/bin/env bash
# Baut die Seite in ein temporäres Verzeichnis und prüft sie.
# Läuft vor jedem Commit/Deploy; Exit-Code != 0 bei einem Fehler.
#
#   1. Build mit --panicOnWarning: fehlende Bilder/Dateien, tote interne Links,
#      unbekannte Icons und rohes HTML im Markdown brechen ab (layouts/_markup, _partials)
#   2. Keine externen Ressourcen (Bilder, Stylesheets, Schriften) im HTML
#   3. Kein JavaScript
#   4. Jede Seite gibt es auf Deutsch und Englisch
set -euo pipefail
cd "$(dirname "$0")/.."

out=$(mktemp -d)
trap 'rm -rf "$out"' EXIT
fehler=0

echo "1/4 Build"
hugo --gc --minify --panicOnWarning --logLevel warn --destination "$out" >/dev/null

echo "2/4 Externe Ressourcen"
if grep -rEo --include='*.html' '(src|srcset)="?(https?:)?//[^ ">]+|<link[^>]*rel="?(stylesheet|preload|icon)[^>]*href="?(https?:)?//[^ ">]+' "$out"; then
  echo "   FEHLER: externe Ressourcen gefunden (docs/architektur.md)"; fehler=1
fi

echo "3/4 JavaScript"
if grep -rlE --include='*.html' '<script|\son[a-z]+=' "$out"; then
  echo "   FEHLER: JavaScript gefunden – die CSP in static/.htaccess erlaubt keines"; fehler=1
fi

echo "4/4 Sprachen"
if ! diff <(cd content/de && find . -name '*.md' | sort) <(cd content/en && find . -name '*.md' | sort); then
  echo "   FEHLER: content/de und content/en enthalten nicht die gleichen Dateien"; fehler=1
fi

if [ "$fehler" -eq 0 ]; then echo "OK"; fi
exit "$fehler"
