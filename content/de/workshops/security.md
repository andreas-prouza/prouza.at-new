---
title: "Security"
group: konzepte
weight: 30
aliases: ["/schulungen-security/"]
packages:
  - name: "Basis Überblick"
    duration: "1/2 Tag"
    items:
      - "Hier erhalten sie einen Überblick über die Bereiche und worauf zu achten ist"
  - name: "Advanced"
    duration: "1 Tag"
    items:
      - "Basis Überblick"
      - "Themenbereiche werden in der Praxis gezeigt und wie sie umgesetzt werden können"
---

Ein leider viel zu unterschätztes Thema.  
Ohne Verschlüsselung ist es möglich **alle Passwörter der Benutzer in klartext zu lesen**. (Ich zeige auch wie und warum.)

In diesem Workshop zeige ich einen Überblick über: 

* KeyStores
  * Was ist das?
  * Wozu brauche ich es?
  * Wer verwaltet diese?
  * Wo gibt es sie überall?
* SSL Zertifikate
  * Wie sind sie zu lesen?
  * Was sind Zertifikats-Ketten (chain)
  * Wann ist ein Zertifikat vertrauenswürdig?
* Zertifikatsstrategie im Unternehmen
  * Root Zertifikate
    * Was ist ihr Vorteil?
  * Was muss ich bei der Ausrollung bei den Clients beachten?
* SSL Verschlüsselung für diverse Protokolle (HTTP, TELNET, FTP, SSH)
  * Apache Konfiguration
  * NGINX Konfiguration
  * Telnet für Verschlüsselung konfigurieren
* Mit Digital Certificate Manager (DCM) arbeiten
* Tools die mir das Leben leichter machen
* Security auch im täglichen Development

In diesem Workshop werden auch ganz einfache Tricks gezeigt, die in keiner Security Schulung gezeigt werden:  
Z.B. um Fishing-Mails schnell und sicher identifizieren zu können.

Neben Verschlüsselung ist aber auch die Entwicklung selbst ein Sicherheitsrisiko.  
Hier zeige ich wie bei DB Zugriffen der Security Aspekt beibehalten werden kann.
