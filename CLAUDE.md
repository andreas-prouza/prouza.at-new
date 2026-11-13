# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# prouza.at

Statische Webseite von Ing. Andreas Prouza (IBM i: Schulung, Beratung, Projekte), gebaut mit Hugo – ohne Theme, ohne npm, ohne JavaScript.
Inhalte in Markdown (Deutsch und Englisch). Die alte Seite liegt in `/home/andreas/projects/opensource/prouza.at` (Hugo + Blonde-Theme); ihre Inhalte sind übernommen.


## Arbeitsweise

- Jeder Bereich hat eine eigene Datei in [docs/features/](docs/features/) mit Status, Entscheidungen und Akzeptanzkriterien.
- Nur Features mit Status `bereit` umsetzen. Bei Status `entwurf` zuerst die offenen Fragen klären, nicht raten.
- Ein Feature gilt als fertig, wenn alle Akzeptanzkriterien erfüllt sind, `./scripts/pruefen.sh` durchläuft und die Seite gesichtet wurde (hell/dunkel, Desktop/Handy). Danach Status auf `erledigt` setzen.
- Steht etwas in keinem Feature, frag nach, ob es umgesetzt werden soll.
- Entscheidungen, die während der Umsetzung fallen, in den docs nachtragen; offene Fragen in [docs/offene-punkte.md](docs/offene-punkte.md).
- [docs/ziele.md](docs/ziele.md): Ausblick – noch nicht umsetzen, aber berücksichtigen.
- Richtlinien in [docs/architektur.md](docs/architektur.md), Aufbau und Sicherheit in [docs/technik.md](docs/technik.md).
- Vorschläge zur Verbesserung und Hinweise auf mögliche Fehler sind ausdrücklich erwünscht!
- Änderungen im `CHANGELOG.md` eintragen. Verwende `mermaid` für Abläufe in den docs.


## Befehle

```bash
hugo server            # Vorschau, http://localhost:1313/de/
hugo server -D         # inkl. draft: true
./scripts/pruefen.sh   # Build + alle Prüfungen – vor jedem Commit
hugo --gc              # Build nach public/ (nicht eingecheckt)
./scripts/veroeffentlichen.sh   # Deployment auf Produktion (fragt vor dem Übertragen)
./scripts/veroeffentlichen.sh --probelauf   # nur anzeigen, was sich ändern würde
```

Es gibt keine weiteren Tests; `./scripts/pruefen.sh` ist die Testsuite. Nur deployen, wenn ausdrücklich darum gebeten wird – `veroeffentlichen.sh` schreibt auf den Produktiv-Server und löscht dort Dateien (`--delete`). Zum Testen `ZIEL=<lokales Verzeichnis>` setzen.


## Regeln, die nicht offensichtlich sind

- **Sicherheit vor Feature:** kein JavaScript, keine externen Ressourcen (CDN, Webfonts, Embeds), keine Inline-Styles (`style=`) – die CSP in `static/.htaccess` blockt das. Externe Dienste nur als Link. Neue Packages nur nach den Kriterien in [docs/architektur.md](docs/architektur.md).
- **Beide Sprachen:** Jede Seite existiert in `content/de/` und `content/en/` mit gleichem Dateinamen; englische URLs über `slug`. Beim Ändern immer beide Fassungen anpassen. Feste Template-Texte in `i18n/`.
- **Daten im Front Matter, nicht im Template:** Leistungen (`_index.md` → `services`), Workshop-Gruppen (`workshops/_index.md` → `groups`), Pakete (`packages`), Projekte und Badges (`ueber-mich.md`), Produkte (`produkte.md`). Kontaktdaten und Menüs nur in `hugo.toml`.
- **Links und Bilder im Markdown:** interne Links über den Content-Pfad (`/workshops/rpg`, `/produkte#imail`, andere Sprache `/de/impressum`), Bilder als `/img/…`. Die Render-Hooks in `layouts/_markup/` lösen das auf und brechen den Build bei toten Zielen ab. Kein rohes HTML im Markdown (`unsafe = false`). Links im Front Matter (`link:`) laufen über `layouts/_partials/link-url.html` – nie `site.GetPage` direkt mit Anker verwenden.
- **Bilder:** `static/img/` wird unverändert ausgeliefert, `assets/img/` von Hugo skaliert (Logo, Porträt, Badges). `layouts/_partials/static-img.html` sucht zuerst in `assets/`, dann in `static/`.
- **Icons:** nur Namen aus `layouts/_partials/icon.html`; neue Icons dort als SVG-Pfad ergänzen.
- **Hugo ≥ 0.146 Layout-Struktur:** `layouts/_partials/`, `layouts/_markup/`, `home.html`, `page.html`, `section.html`; Sonder-Layouts über `layout:` im Front Matter (`about`, `products`, `contact`).
- **Alte URLs** der vorigen Seite bleiben über `aliases` erreichbar – beim Umbenennen von Seiten Aliase mitnehmen.
- Commit-Nachrichten kurz und auf Deutsch.
