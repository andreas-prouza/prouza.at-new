# Design

Status: `erledigt`

Modernes, ruhiges Erscheinungsbild; Farben aus dem Logo (Kompass in Navy und Petrol).

## Gestaltung

* Farben als CSS-Variablen in `assets/css/main.css` (`:root`): Navy `#1d3f7a` (Primär), Petrol `#0e8a72` (Akzent), helle Flächen `#f6f8fb` / `#ffffff`.
* Dunkelmodus über `prefers-color-scheme: dark` mit eigenen Werten für alle Variablen; Logos bekommen dort eine helle Fläche.
* Schrift: Systemschriften (`system-ui` …), keine Webfonts.
* Karten mit runden Ecken, leichter Schatten, Hover hebt die Karte an.
* Icons: Linien-Icons als Inline-SVG (`layouts/_partials/icon.html`).
* Header bleibt oben stehen; auf schmalen Bildschirmen wird das Menü zu einer eigenen, horizontal scrollbaren Zeile (ohne JS).
* Logo: Kompass-Ausschnitt aus `assets/img/logo.png` (`layouts/_partials/logo.html`).

## Entscheidungen

* 2026-11-10: Kein CSS-Framework; ein Stylesheet (~500 Zeilen) mit Abschnitten Tokens, Basis, Layout, Komponenten, Seiten, Prose.
* 2026-11-10: Kein Umschalter für Hell/Dunkel (bräuchte JavaScript) – es gilt die Systemeinstellung.

## Akzeptanzkriterien

- **D1** Alle Farben über Variablen; Hell- und Dunkelmodus vollständig lesbar.
- **D2** Keine horizontale Scrollleiste ab 360 px Breite.
- **D3** Sichtbarer Fokus für Tastaturbedienung, „Zum Inhalt springen“-Link.
- **D4** Animationen entfallen bei `prefers-reduced-motion`.

## Testabdeckung

* D1–D3: Sichtprüfung 2026-11-10 (Chrome headless, 1366 px / 390 px, hell / dunkel)
