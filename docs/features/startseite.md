# Startseite

Status: `erledigt`

Erster Eindruck: wer ich bin, was ich anbiete, was es Neues gibt – und der Weg zur Kontaktaufnahme.

## Aufbau

```
┌────────────────────────────────────────────────┐
│ Hero: Eyebrow (IBM Champion), Titel, Lead,    │
│       [Projekt anfragen] [Alle Workshops]     │  Video (sonst Porträt) + Badge
├────────────────────────────────────────────────┤
│ Was ich anbiete: 6 Karten (Icon, Titel, Text)  │  aus _index.md → services
├────────────────────────────────────────────────┤
│ Workshops: 4 Gruppen mit Links                 │  aus workshops/_index.md → groups
├────────────────────────────────────────────────┤
│ Aktuelles: die 3 neuesten News                 │
├────────────────────────────────────────────────┤
│ Badge-Leiste                                   │  aus ueber-mich.md → badges
├────────────────────────────────────────────────┤
│ Kontakt-Band: Mail + Telefon                   │
└────────────────────────────────────────────────┘
```

## Daten

`content/<sprache>/_index.md`:

* `hero.eyebrow`, `hero.title`, `hero.lead`
* optional `hero.video` (Pfad unter `assets/`, MP4/H.264), `hero.poster` (Bild unter `assets/`, wird zu WebP), `hero.videoLabel` (Beschreibung für Screenreader). Ohne `video` erscheint das Porträt.
* `services[]`: `title`, `icon` (Name aus `layouts/_partials/icon.html`), `text`, optional `link` (Content-Pfad, z. B. `/workshops`)
* Text unter dem Markdown-Front-Matter: Einleitung zu „Was ich anbiete“

## Entscheidungen

* 2026-11-10: Leistungen aus der alten Startseite übernommen (Schulungen, Projekte, Projektmanagement, Schnelle Hilfe, Beratung), ergänzt um „Open Source & Produkte“.
* 2026-11-10: Badges kommen aus `ueber-mich.md` (eine Quelle); das erste Badge erscheint im Hero.
* 2026-11-13: OBI-Intro-Video ersetzt im Hero das Porträt – selbst gehostet, nicht über YouTube: ein Embed bräuchte `<iframe>`, fremdes JavaScript und Cookies (Datenschutz, CSP). YouTube höchstens als Link.
* 2026-11-13: Wiedergabe `autoplay muted loop playsinline` (ohne JavaScript startet ein Video nur stumm von selbst; das Video hat keine Tonspur) mit `controls`, damit man es anhalten kann (WCAG 2.2.2). Bei „Bewegung reduzieren“ (`prefers-reduced-motion`) blendet das CSS das Video aus und das Porträt ein.
* 2026-11-13: Webfassung in 720p (`assets/video/obi-intro-720.mp4`, 1,8 MB statt 14 MB für das 1080p-Original) – im Hero ist das Video höchstens ca. 600 px breit; Fingerprint im Dateinamen, 1 Jahr Cache. Erzeugt mit:
  `ffmpeg -i obi-intro.mp4 -vf scale=1280:-2 -c:v libx264 -crf 28 -preset slow -pix_fmt yuv420p -movflags +faststart -an obi-intro-720.mp4`;
  Poster: `ffmpeg -ss 1.5 -i obi-intro.mp4 -frames:v 1 -q:v 3 obi-intro-poster.jpg`
* 2026-11-13: Mit Video sitzt das Badge unter dem Video statt darüber, damit es die Bedienelemente nicht verdeckt.

## Akzeptanzkriterien

- **S1** Hero mit Titel, Lead, Porträt und den Buttons „Projekt anfragen“ (→ Kontakt) und „Alle Workshops“.
- **S2** Leistungen kommen vollständig aus dem Front Matter; ein `link` auf eine fehlende Seite bricht den Build ab.
- **S3** Workshop-Gruppen und Workshops werden aus der Workshop-Sektion gelesen (keine doppelte Pflege).
- **S4** Die 3 neuesten News erscheinen mit Bild, Datum und Teaser.
- **S5** Darstellung ohne horizontales Scrollen ab 360 px Breite.
- **S6** Ist `hero.video` gesetzt, läuft das Video stumm in Schleife im Hero, lässt sich anhalten und wird nur vom eigenen Server geladen; eine fehlende Video- oder Posterdatei bricht den Build ab. Bei „Bewegung reduzieren“ erscheint das Porträt.

## Testabdeckung

* S2, S3: `./scripts/pruefen.sh` (Build)
* S1, S4, S5: Sichtprüfung 2026-11-10 (Chrome, 1366 px und 390 px, hell und dunkel)
* S6: `./scripts/pruefen.sh` (Build, keine externen Ressourcen); Sichtprüfung 2026-11-13 (Chrome headless, 1366 px und 390 px, hell und dunkel, `--force-prefers-reduced-motion`). CSP `media-src 'self'` erst am Server prüfbar.
