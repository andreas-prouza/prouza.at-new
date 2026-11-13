# prouza.at

Webseite von Ing. Andreas Prouza: Vorstellung, News, Angebot für Projekte, Workshops und Beratung rund um die IBM i.
Statische Seite, gebaut mit [Hugo](https://gohugo.io) – Inhalte in Markdown, Deutsch und Englisch.

**Stand:** Startseite, Workshops, News, Produkte, Über mich, Kontakt und Impressum sind umgesetzt; die Inhalte der alten Seite sind übernommen (siehe [docs/features/](docs/features/)). Das Deployment-Skript ist fertig, der erste Lauf auf Produktion steht aus. Offene Punkte: [docs/offene-punkte.md](docs/offene-punkte.md).


## Voraussetzungen

* [Hugo extended](https://gohugo.io/installation/) 0.146 oder neuer (getestet mit 0.169) – Arch: `pacman -S hugo`
* Sonst nichts: kein Node/npm, kein Python, kein Theme


## Starten

```bash
hugo server            # http://localhost:1313/de/ – lädt bei Änderungen automatisch neu
hugo server -D         # inkl. Entwürfe (draft: true)
```


## Prüfen und Bauen

```bash
./scripts/pruefen.sh   # Build + Prüfungen (tote Links, fehlende Bilder, externe Ressourcen, JS, Sprachen)
hugo --gc              # Ergebnis nach public/
```

## Veröffentlichen

```bash
./scripts/veroeffentlichen.sh   # prüfen, bauen, Probelauf zeigen, nach Bestätigung per rsync auf www.prouza.at
./scripts/veroeffentlichen.sh --probelauf   # nur zeigen, was sich ändern würde
```

In VS Code gibt es dieselben Befehle (und Logs, Sicherung, Vorschau) über die Erweiterung [Command Runner](https://marketplace.visualstudio.com/items?itemName=edonet.vscode-command-runner) – siehe `.vscode/settings.json`.

Details und der einmalige Umstieg von der alten Seite: [docs/features/deployment.md](docs/features/deployment.md).


## Inhalte pflegen

Alle Inhalte liegen als Markdown in `content/de/` und `content/en/` – **jede Seite in beiden Sprachen mit dem gleichen Dateinamen**.

| Was | Wo |
|---|---|
| News / Ankündigung | `content/<sprache>/news/<name>.md` (`title`, `date`, optional `image`) |
| Workshop | `content/<sprache>/workshops/<name>.md` (`group`, `weight`, `packages`) |
| Leistungen auf der Startseite | `services` im Front Matter von `content/<sprache>/_index.md` |
| Projekte, Auszeichnungen | Front Matter von `content/<sprache>/ueber-mich.md` |
| Produkte | Front Matter von `content/<sprache>/produkte.md` |
| Kontaktdaten, Menü | `hugo.toml` |
| Bilder | `static/img/` (unverändert) oder `assets/img/` (wird verkleinert) |

Beispiel für eine neue News:

```markdown
---
title: "Workshop-Termine 2027"
date: 2026-12-01
image: "/img/modern.png"
---

Text in Markdown …
```

Links auf andere Seiten über den Content-Pfad: `[Workshops](/workshops)`, `[RPG](/workshops/rpg)`, `[iMail](/produkte#imail)`.
Rohes HTML im Markdown ist abgeschaltet.


## Dokumentation

* [Features](docs/features/) – Anforderungen, Entscheidungen und Akzeptanzkriterien je Bereich
* [Architektur](docs/architektur.md) – Richtlinien
* [Technik](docs/technik.md) – Aufbau, Prüfungen, Sicherheit, Deployment
* [Ziele](docs/ziele.md) und [offene Punkte](docs/offene-punkte.md)
