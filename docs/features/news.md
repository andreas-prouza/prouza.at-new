# News

Status: `erledigt`

Ankündigungen und Artikel (Vorträge, neue Tools, Fachartikel). Ersetzt die „Posts“ der alten Seite.

## Daten

`content/<sprache>/news/<name>.md`:

```yaml
title: "Common Europe 2024"
date: 2024-04-07
image: "/img/…"        # optional, Vorschaubild auf der Karte; sonst das Logo
description: "…"       # optional, sonst automatischer Teaser
```

## Entscheidungen

* 2026-11-10: Alle 15 Posts der alten Seite übernommen; Bild-Fragmente (`#post_img` usw.) entfernt, alte URLs `/posts/<name>/` leiten weiter.
* 2026-11-10: Fehlende Bilder der alten Seite aus den OBI-Repos ergänzt (`ibm-i-build-obi/docs/img`, `obi-extension/asserts/img/ext`); nicht auffindbare Bilder entfernt (siehe [offene Punkte](../offene-punkte.md)).
* 2026-11-10: RSS-Feed für die News (`/de/news/index.xml`) und die gesamte Seite.
* 2026-11-10: Ein Bild als erstes Element eines Beitrags wird klein dargestellt (meist das Logo).

## Akzeptanzkriterien

- **N1** Liste nach Datum absteigend, Karten mit Bild, Datum, Titel und Teaser.
- **N2** Detailseite mit Datum, Titel, Inhalt und Kontakt-Band.
- **N3** RSS-Feed je Sprache.
- **N4** Fehlende Bilder oder tote interne Links brechen den Build ab.

## Testabdeckung

* N4: `./scripts/pruefen.sh` (Negativtest 2026-11-10: toter Link, externes Bild und `<script>` wurden erkannt)
* N1–N3: Sichtprüfung 2026-11-10
