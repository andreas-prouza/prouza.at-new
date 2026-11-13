#!/usr/bin/env bash
# Prüft, baut und veröffentlicht die Seite auf www.prouza.at (siehe docs/features/deployment.md).
#
#   1. ./scripts/pruefen.sh
#   2. Build nach public/
#   3. rsync-Probelauf: zeigt, was übertragen und was am Server gelöscht wird
#   4. nach Bestätigung: rsync --delete
#   5. Kontrolle: Startseite erreichbar, Security-Header gesetzt
#
#   --probelauf  nur 1–3, mit vollständiger Liste der geänderten und zu löschenden Dateien
set -euo pipefail
cd "$(dirname "$0")/.."

probelauf=false
case "${1:-}" in
  --probelauf) probelauf=true ;;
  "") ;;
  *) echo "Aufruf: $0 [--probelauf]" >&2; exit 2 ;;
esac

ZIEL="${ZIEL:-prouza.at:/var/customers/webs/prouza/var/www/prouza.at/}"
URL="${URL:-https://www.prouza.at/de/}"
# Dateien am Server, die nicht aus dem Build stammen und nie gelöscht werden dürfen
SCHUTZ=(--filter='P .well-known/')

echo "== Prüfen"
./scripts/pruefen.sh

echo "== Build nach public/"
hugo --gc --minify --cleanDestinationDir --logLevel warn >/dev/null

echo "== Probelauf (nichts wird geändert)"
probe=$(rsync -a --checksum --delete --itemize-changes --dry-run "${SCHUTZ[@]}" public/ "$ZIEL")
neu=$(grep -c '^[<>c]f' <<<"$probe" || true)
weg=$(grep '^\*deleting' <<<"$probe" || true)
echo "   Dateien neu/geändert: $neu"
if [ -n "$weg" ]; then
  echo "   Am Server zu löschen: $(wc -l <<<"$weg")"
  if ! $probelauf; then
    sed -n "1,50s/^\*deleting */     - /p" <<<"$weg"
    if [ "$(wc -l <<<"$weg")" -gt 50 ]; then echo "     … (gekürzt)"; fi
  fi
fi
if [ "$neu" -eq 0 ] && [ -z "$weg" ]; then echo "Nichts zu tun."; exit 0; fi

if $probelauf; then
  echo "== Vollständige Liste"
  grep -E "^([<>c]f|\*deleting)" <<<"$probe" | sed -E "s/^\*deleting +/  - /; s/^[<>c]f[^ ]* +/  + /" || true
  exit 0
fi

read -r -p "Veröffentlichen? [j/N] " antwort
[[ "$antwort" =~ ^[jJyY]$ ]] || { echo "Abgebrochen."; exit 1; }

echo "== Übertragen"
rsync -a --checksum --delete "${SCHUTZ[@]}" public/ "$ZIEL"

echo "== Kontrolle $URL"
kopf=$(curl -sSI "$URL")
grep -q '^HTTP/[0-9.]* 200' <<<"$kopf" || { echo "   FEHLER: Startseite nicht erreichbar"; exit 1; }
grep -qi '^content-security-policy:' <<<"$kopf" \
  || echo "   WARNUNG: keine Content-Security-Policy – greift .htaccess? (AllowOverride, mod_headers)"
echo "OK"
