---
title: "IBM i Entwicklung mit Visual Studio Code"
date: 2022-04-10T20:22:33+02:00
image: "/img/vscode.svg"
aliases: ["/posts/vscode/"]
---

![VSCode](/img/vscode.svg)

![like](/img/like.png)
Im VSCode können eine Vielzahl an Erweiterungen installiert werden.  
Dadurch habe ich den VSCode für folgende Bereiche im Einsatz:  
* IBM i Entwicklung (RPG, CL, PF, ...)
  * Ich habe alle Sourcen lokal am PC
  * Änderungen werden automatisch zur IBM i synchronisiert
  * Es gibt kein Tool oder Plugin im RDi von diversen Herstellern, wo ich so schnell eine Source finde wie mit dem VSCode!
* Python
* Java & Maven
* PHP
* Alle Sourcen mit GIT versioniert
* Aufruf von Build-Tools (GNU Make)
* Synchronisation mit Servern (IBM i oder auch Linux/Windows)
* Noch nie hatte ich Probleme mit Updates der IDE oder den Erweiterungen
* Es gibt auch keine Kompatibilitätsprobleme bei den Erweiterungen
* VSCode bekommt immer größere Beliebtheit wodurch viele Softwarelieferanten auch hier Plugins und Unterstützung anbieten
* Neben der Versionsverwaltung (GIT) speichert auch der VSCode  
  ![VSCode](/img/vscode-3.png)

![VSCode](/img/vscode-2.png)


![dislike](/img/dislike.png)
Was im VSCode gegenüber RDi nicht geht:
* Debuggen
* DDS Screendesigner
* Keine Gliederung
* Kein automatischer Sprung in Subroutine oder Prozedur bei STRG + Mausklick auf den Namen