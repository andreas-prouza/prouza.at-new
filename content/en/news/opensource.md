---
title: "Open Source"
date: 2022-04-05T20:22:33+02:00
image: "/img/Books-150x150.jpg"
aliases: ["/posts/opensource/"]
---

Mit dem Paketmanager `yum` lassen sich eine Vielzahl an OpenSource Projekten installieren.  
Sowohl für Entwicklung als auch für den täglichen Gebrauch (z.B. [Suchen im IFS](#suchen-im-ifs)).

Dies geht entweder über `yum` in der Shell oder über den Paketmanager im ACS.


### Viele Projekte

So gibt es kostenlos ein Dokumentations-System welches jeder kennt: MediaWiki (Wikipedia)

Dies kann mit folgenden Produkten installiert werden:

* PHP
* SQLite
* MediaWiki
* NGINX oder den Standard Apache WebServer

Hier eine paar klassische Projekte, nur um ein paar Wenige zu nennen:

| | | | |
| -- |--|--|--|
|![GNU][GNU] | ![GIT][GIT] | ![Python][Python]| ![SQLite][SQLite] |
|![PHP][PHP] | ![MediaWiki][MediaWiki] | ![NGINX][NGINX] | ![PostgreSql][PostgreSql] |
| ![MariaDB][MariaDB]  |


[GIT]: /img/Git-logo.svg_-300x126.png
[Python]: /img/python2.png
[GNU]: /img/GNU-300x293.png
[PHP]: /img/PHP-logo-300x150.png
[MediaWiki]: /img/MediaWiki-2020-logo.svg
[NGINX]: /img/Nginx_logo.svg

[MariaDB]: /img/mariadb.png
[SQLite]: /img/SQLite370.svg
[PostgreSql]: /img/postgresql.png


### Suchen im IFS
Mit dem Paket `findutils` kann im Bruchteil einer Sekunde jedes IFS File und Ordner gefunden werden:
```sh
yum install findutils
```

Damit dies funktioniert, muss das IFS zuvor indexiert werden.  
Hierfür muss (am besten als Admin) das IFS indiziert werden:
```sh
updatedb &
```

Mit folgenden Befehl erhalte ich eine Liste mit allen Verzeichnissen wo die angegebene Datei enthalten ist.

```sh
locate meine-datei.txt
```
