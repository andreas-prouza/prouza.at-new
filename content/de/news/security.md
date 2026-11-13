---
title: "Wie Secure ist ihre IBM i ?!?"
date: 2022-04-06T20:22:33+02:00
image: "/img/Data_security_27-1.jpg"
aliases: ["/posts/security/"]
---

![Python](/img/Data_security_27-1.jpg)

Ohne SSL alle Passwörter ermitteln.  
Ohne Verschlüsselung können auch mit perfektem Berechtigungskonzept sehr einfach alle Passwörter von Benutzern ermittelt werden.

Ich zeige ihnen wie dies geht um ein Verständnis für die Problematik zu erhalten.

## Komponenten bei Security ##

* Verschlüsselung aller Protokolle
  * HTTP
  * FTP
  * Telnet
  * JDBC
* Verschlüsselung auch bei allen anderen Servern (Linux, Windows)
* Zertifikatskonzept
  * Kostenfrei (selsigned) 
  * oder Kostenpflichtig mit Zertifikatsaussteller
* Integration und Wartung der Zertifikate beim Client (PC)