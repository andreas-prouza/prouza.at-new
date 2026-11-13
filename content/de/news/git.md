---
title: "Sourceverwaltung mit GIT"
date: 2022-04-05T20:22:33+02:00
image: "/img/Git-logo.svg_-300x126.png"
aliases: ["/posts/git/"]
---

![GNU](/img/Git-logo.svg_-300x126.png)

GIT läuft auf der IBM i und kann als Sourceverwaltungs System verwendet werden.

Es können die Sourcen sowohl im IFS sein als auch in Source-Files (PF-SRC). \
Entscheidet man sich für die Beibehaltung von Source-Files enhält man die beste Unterstützung für GIT mit dem RDi.

Über den Paketmanager kann GIT installiert werden:
```sh
yum install git
```

Mit GIT lassen sich einfache Revesionssicherheiten für alle IBM i Sourcen schnell aufsetzen:

![GIT-Branch](/img/git1.png)

Von hier aufbauend, können später auch Branches für eine erweiterte Strukturierung der Entwicklung eingeführt werden.