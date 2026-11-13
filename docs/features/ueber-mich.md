# Über mich

Status: `erledigt`

Vorstellung mit Porträt, Kontaktdaten, Kurztext, Auszeichnungen und Referenzprojekten.

## Daten

`content/<sprache>/ueber-mich.md` (Layout `about`):

* `badges[]`: `title`, `image` (Pfad unter `assets/`), `url`
* `projects[]`: `title`, `tech[]`, `text`, optional `link` (Content-Pfad oder externe URL), optional `icons[]` (Logos als `/img/…`, Technologie-Icons unter `static/img/tech/`)
* Markdown-Text: Kurzvorstellung

Porträt und Kontaktdaten kommen aus `hugo.toml` (`params`).

## Entscheidungen

* 2026-11-10: Die Projekt-Tabelle der alten Seite ist als Kartenliste im Front Matter übernommen; die Technologie-Icons sind durch Text-Chips ersetzt.
* 2026-11-10: Credly-Badges als lokale Bilder mit Link auf Credly, ohne das Credly-Skript.
* 2026-11-10: COMMON-Europe-Badge durch das offizielle Credly-Bild ersetzt (heruntergeladen, Rand zugeschnitten, 457×600 px) – nicht direkt von images.credly.com eingebunden, weil die CSP nur eigene Bilder erlaubt. Es wird auch als Vorschaubild der News `cec2024` verwendet. Die dunkle Hinterlegung für weiße Logos (`onDark`/`imageOnDark`) ist damit nicht mehr nötig und entfernt.
* 2026-11-10: Technologie-Logos der alten Projekt-Tabelle (Java, Python, Oracle, XML, Excel, SSL, Zertifikat, DB, GNU, Git, Schulung) wieder aufgenommen – als Logo-Reihe über jeder Projektkarte, zusätzlich zu den Text-Chips. Projekte ohne Icon auf der alten Seite haben ein passendes bekommen (FTP Client: Datenübertragung, Exit-Programme und Performance: DB). Die Logos liegen auf hellem Grund, weil GNU, Git und Oracle auf dunklem Hintergrund nicht lesbar sind.
* 2026-11-10: Kurzvorstellung neu formuliert, nur aus Fakten der alten Seite (Projekte, Academy, COMMON, Open Source, IBM Champion 2023–2026).

## Akzeptanzkriterien

- **U1** Kopf mit Porträt, Name, Tagline, Mail, Telefon, Ort und GitHub.
- **U2** Auszeichnungen als Karten, jede verlinkt auf den Nachweis.
- **U3** Projekte als Karten mit Technologie-Chips und Logos (helle Kachel, auch im Dunkelmodus lesbar); verlinkte Projekte sind als Link erkennbar.
- **U4** Keine Inhalte von Drittanbietern werden geladen.

## Testabdeckung

* U4: `./scripts/pruefen.sh`
* U1–U3: Sichtprüfung 2026-11-10
