---
title: "Mit GNU Make IBM i Sourcen kompilieren"
date: 2022-04-05T20:22:33+02:00
image: "/img/GNU-300x293.png"
aliases: ["/posts/gmake/"]
---

![GNU](/img/GNU-300x293.png)

Mit GNU Make kann als Build-Tool eingesetzt werden um automatisiert IBM i Sourcen zu kompilieren.

Dafür sollten die Sourcen im IFS liegen, was bei allen meinen Projekten nur Vorteile gebracht hat.

```sh
yum install make-gnu
```

Sogenannte Makefiles dienen zur Konfiguration.
Am Ende wird ein simpler Befehl abgesetzt, der die Sourcen nacheinander kompiliert.

Folgende Features hat GNU Make:
* Source Abhängigkeiten prüfen 
  * Wird eine Tabelle neu erstellt, werden automatisch auch alle Abhängigkeiten (RPG) dazu erkannt und ebenfalls kompiliert
  * Man kann es soweit konfigurieren, dass auch bei Änderung einer Copy-Strecke alle zugehörigen Sourcen erstellt werden
* Alle Arten von Sourcen werden unterstützt (PF, LF, RPG, CL, CMD, SQL Table usw.)
* Prüfung des Änderungsdatum der Source mit dem Änderungsdatum des Objekts. \
  Automatische Kompilierung sollte sich die Source geändert haben

Das GNU Make wird mit einem simplen Befehl gestartet:
```sh
gmake all
```
