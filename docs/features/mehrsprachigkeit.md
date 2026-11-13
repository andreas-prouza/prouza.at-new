# Mehrsprachigkeit

Status: `erledigt`

Deutsch (Standard) und Englisch. URLs mit Sprachpräfix: `/de/…`, `/en/…`; `/` leitet auf `/de/` weiter.

## Regeln

* Jede Seite gibt es in `content/de/` und `content/en/` mit **dem gleichen Dateinamen** – so verknüpft Hugo die Übersetzungen.
* Englische URLs über `slug` im Front Matter (z. B. `ueber-mich.md` → `/en/about/`).
* Feste Texte der Templates in `i18n/de.toml` und `i18n/en.toml`.
* Menüs je Sprache in `hugo.toml`.
* Links im Markdown über den Content-Pfad (`/workshops/rpg`) – sie zeigen automatisch auf die Seite der gleichen Sprache. Für die andere Sprache: `/de/impressum`.

## Akzeptanzkriterien

- **M1** Der Sprachumschalter führt zur Übersetzung der aktuellen Seite (sonst zur Startseite der anderen Sprache).
- **M2** `hreflang`-Verweise im `<head>`.
- **M3** Eine Seite, die nur in einer Sprache existiert, wird von `./scripts/pruefen.sh` gemeldet.

## Testabdeckung

* M3: `./scripts/pruefen.sh`
* M1, M2: Sichtprüfung 2026-11-10
