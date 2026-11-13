# Changelog

## 2026-11-13

### Neu
- Startseite: OBI-Intro-Video im Hero statt Porträt (stumm, Schleife, mit Bedienelementen; 720p-Webfassung, 1,8 MB). Bei „Bewegung reduzieren“ erscheint weiterhin das Porträt.
- `.htaccess`: CSP erlaubt eigene Videos (`media-src 'self'`); MP4 wird 1 Jahr gecacht (Fingerprint)

## 2026-11-10 – Neuaufbau

### Neu
- Hugo-Seite ohne Theme, ohne npm und ohne JavaScript; eigenes Stylesheet mit Hell- und Dunkelmodus
- Startseite mit Hero, Leistungen, Workshop-Gruppen, aktuellen News, Auszeichnungen und Kontakt-Band
- Workshops: Übersicht nach Gruppen, Detailseiten mit Paket-Karten und Anfrage per Mail
- News mit RSS-Feed (ersetzt die Posts der alten Seite)
- Über mich, Produkte und Kontakt neu gestaltet; Daten im Front Matter
- `scripts/pruefen.sh`: Build mit Prüfung auf tote Links, fehlende Bilder, externe Ressourcen, JavaScript und fehlende Übersetzungen
- `static/.htaccess` mit Content-Security-Policy und Security-Headern
- `scripts/veroeffentlichen.sh`: Prüfen, Build, rsync-Probelauf mit Löschliste, Übertragen nach Bestätigung, Kontrolle der Header; `--probelauf` zeigt nur die Änderungen
- VS-Code-Befehle (Command Runner) wie bei Profito: Veröffentlichen, Probelauf, Sicherung, Header, Logs, Vorschau, Prüfen
- `.htaccess`: Weiterleitungen für alte URLs ohne Sprachpräfix, alte RSS-Feeds und `/schulungen-sql/`; Alias `/posts/` für die News-Übersicht
- COMMON-Europe-Badge: offizielles Credly-Bild (lokal gespeichert)
- Workshop „IBM i Entwicklung mit GIT“ (Gruppe Development)
- News `cec2024` und `cloud-dev`: Bilder wieder da (lagen nur am alten Server)
- Startseite `/`: englischsprachige Browser landen auf `/en/` (wie bisher)
- Über mich: Technologie-Logos der alten Seite (Java, Python, Oracle, Git, GNU Make …) wieder auf den Projektkarten (`icons` im Front Matter)

### Behoben
- Titel der 404-Seite war in beiden Sprachen Hugos englischer Standardtext
- Über mich: Projekt-Links mit Anker (`/produkte#imail`, `#html-into-pdf-hip`) führten ins Leere (fehlendes Sprachpräfix); Front-Matter-Links werden jetzt zentral aufgelöst und geprüft, externe bekommen `rel="noopener"`

### Übernommen von der alten Seite
- Alle Workshops, Posts, Produkte, Projekte und das Impressum (DE/EN)
- Weiterleitungen von allen alten URLs (`/schulungen-*`, `/posts/*`, `/about`, `/contact`, `/products`, `/impress`)

### Entfernt
- Google Analytics, Facebook-Plugin und Cookies (auch aus der Datenschutzerklärung)
- Credly-Embed-Skript (Badges jetzt als Bild mit Link)
- Formspree-Kontaktformular – Mail und Telefon reichen (docs/features/kontaktformular.md)
- Nicht mehr verwendete Bilder des alten Themes
- Dunkle Hinterlegung für weiße Logos (`onDark`/`imageOnDark`) – nicht mehr gebraucht
