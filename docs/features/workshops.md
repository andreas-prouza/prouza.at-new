# Workshops

Status: `erledigt`

Übersicht aller Workshops nach Gruppen und eine Detailseite je Workshop mit Paketen, Inhalten und Anfrage-Möglichkeit.

## Daten

`content/<sprache>/workshops/_index.md`:

* `groups[]`: `key`, `title`, `icon` – Reihenfolge der Gruppen
* Markdown-Text: allgemeine Infos (Gestaltung, Durchführung, Remote, Aufteilung) unter der Übersicht

`content/<sprache>/workshops/<name>.md`:

```yaml
title: "(Fully) Free RPG"
group: development          # key aus _index.md
weight: 10                  # Reihenfolge in der Gruppe
teaser: "…"                 # optional: Text auf der Karte und unter dem Titel
packages:
  - name: "Basis Überblick"
    duration: "1/2 Tag"
    items: ["…", "…"]
```

Text unter dem Front Matter = Inhalte des Workshops.
Externe Einträge (OBI, i-Releaser) haben `externalUrl` und `build.render: never`: Sie erscheinen nur in der Übersicht und verlinken direkt nach außen.

## Entscheidungen

* 2026-11-10: Die Paket-Tabellen der alten Seite (HTML in Tabellenzellen) sind ins Front Matter gewandert; die Detailseite zeigt sie als Karten.
* 2026-11-10: „Workshop anfragen“ öffnet eine Mail mit Betreff „Workshop: <Titel>“.
* 2026-11-10: Alte URLs `/schulungen/` und `/schulungen-<name>/` leiten weiter.

## Akzeptanzkriterien

- **W1** Übersicht nach Gruppen; jede Karte zeigt Titel und Dauer der Pakete, externe Einträge sind gekennzeichnet.
- **W2** Detailseite: Gruppe, Titel, Pakete (Name, Dauer, Punkte), Inhalte, Seitenleiste mit Mail und Telefon.
- **W3** Ein Workshop mit unbekannter `group` oder eine Gruppe ohne Workshops bricht den Build ab.
- **W4** Alte URLs leiten auf die neuen Seiten weiter.

## Testabdeckung

* W3: `./scripts/pruefen.sh`
* W1, W2, W4: Sichtprüfung 2026-11-10
