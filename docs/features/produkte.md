# Produkte

Status: `erledigt`

Open-Source-Werkzeuge (OBI, i-Releaser, Python WebAPI) und die Produkte HIP und iMail.

## Daten

`content/<sprache>/produkte.md` (Layout `products`):

* `groups[]`: `title`, `icon`, `intro` (Markdown, eine Zeile), `items[]`
* `items[]`: `title`, `id` (Anker), optional `image` (unter `static/`), `text`, `features[]`, `links[]` (`label`, `url`)
* Markdown-Text: allgemeine Infos unter den Karten

## Entscheidungen

* 2026-11-10: Anker `#html-into-pdf-hip` und `#imail` wie auf der alten Seite, damit bestehende Links funktionieren.
* 2026-11-10: Link-Icons ergeben sich aus der URL (GitHub, PDF unter `/doc/`, sonst extern).

## Akzeptanzkriterien

- **P1** Karten je Produkt mit Logo, Text, Feature-Liste und Link-Buttons.
- **P2** Ein Link auf eine fehlende PDF unter `/doc/` bricht den Build ab.

## Testabdeckung

* P2: `./scripts/pruefen.sh`
* P1: Sichtprüfung 2026-11-10
