---
title: "IBM i Entwicklung mit GIT"
group: development
weight: 30
packages:
  - name: "Basis Überblick"
    duration: "1/2 Tag"
    items:
      - "Überblick, wie GIT auf der IBM i funktioniert und was es in der täglichen Entwicklung bringt"
      - "Sourcen im IFS oder in Source-Files – Vor- und Nachteile"
  - name: "Advanced"
    duration: "2 Tage"
    items:
      - "Basis Überblick"
      - "Migration bestehender Sourcen und Einrichten des Repositorys"
      - "Arbeiten im Team mit Branches"
      - "Praktische Umsetzung mit VS Code"
---

![GIT](/img/Git-logo.svg_-300x126.png)

GIT läuft direkt auf der IBM i und eignet sich als Sourceverwaltung für alle IBM i Sourcen – RPG, CL, DSPF, PF, SQL usw.

Das Ziel:
* Nachvollziehbarkeit: Wer hat wann was und warum geändert?
* Jeder Stand ist wiederherstellbar
* Mehrere Entwickler arbeiten parallel an denselben Sourcen
* Grundlage für automatisierte Builds und Deployments

### Überblick
* Installation von GIT über den Paketmanager (`yum install git`)
* Sourcen im IFS oder in Source-Files (PF-SRC)
  * Welche Variante passt zu welchem Team?
  * Unterstützung durch VS Code
* Grundbegriffe: Repository, Commit, Branch, Merge
* Migration bestehender Sourcen ins IFS
  * Import aller Sourcen in ein GIT-Repository
* Arbeiten mit GIT in Visual Studio Code
* Branches für eine strukturierte Entwicklung
  * Entwicklung, Test und Produktion
  * Änderungen vergleichen und zusammenführen
* Zentrale Repositories (z. B. GitHub, GitLab, Gitea)
* Ausblick: automatisierte Builds mit [OBI](/news/obi) und Deployments mit [i-Releaser](/news/i-releaser)

Ein Beispiel-Projekt dazu gibt es auf [GitHub](https://github.com/andreas-prouza/ibm-i-build).
