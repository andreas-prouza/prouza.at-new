---
title: "Produkte"
description: "Open-Source-Werkzeuge für Build und Deployment sowie bewährte Services für PDF und Mail auf der IBM i."
layout: "products"
aliases: ["/products/"]
# Gruppen mit Karten. id = Anker (z. B. /produkte#imail), image = Pfad unter static/, links: label + url
groups:
  - title: "Open Source"
    icon: "code"
    intro: "Frei verfügbar auf [GitHub](https://github.com/andreas-prouza)."
    items:
      - title: "OBI (Object Builder for i)"
        id: "obi"
        image: "/img/obi/OBI-Logo-smaller.png"
        text: "Automatisiertes Build-Tool für die IBM i: erstellt Objekte unter Berücksichtigung aller Abhängigkeiten in der richtigen Reihenfolge, mit Joblogs und Spool Files je Objekt."
        links:
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/obi"
      - title: "OBI für VS Code"
        id: "obi-vscode"
        image: "/img/obi/OBI-Logo-smaller.png"
        text: "OBI als Erweiterung direkt in Visual Studio Code."
        links:
          - label: "Marketplace"
            url: "https://marketplace.visualstudio.com/items?itemName=andreas-prouza.obi"
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/obi-extension"
      - title: "OBI IDE-Integration"
        id: "obi-ide"
        image: "/img/obi/OBI-Logo-smaller.png"
        text: "Client für OBI: Integration in VS Code oder RDi und Sync der Sourcen mit der IBM i."
        links:
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/ibm-i-build-obi"
      - title: "i-Releaser"
        id: "i-releaser"
        image: "/img/i-releaser/logo2-icon.png"
        text: "Workflow-basiertes Deployment-Tool für die IBM i."
        links:
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/i-releaser"
      - title: "Python WebAPI on IBM i"
        id: "python-webapi"
        text: "Web-API in Python als Schnittstelle für Datenbankzugriffe auf der IBM i."
        links:
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/python-webapi"
  - title: "Weitere Produkte"
    icon: "package"
    intro: "Services für die IBM i, die als Batch-Job laufen und über eine Data Queue angesteuert werden."
    items:
      - title: "HTML Into PDF (HIP)"
        id: "html-into-pdf-hip"
        image: "/img/Konvertierung-300x125.png"
        text: "Erstellt PDFs aus einem HTML-Template. Platzhalter im Template werden zur Laufzeit befüllt – so entstehen PDFs im Corporate Design. Im Einsatz für Rechnungen (auch mit komplexen Positionen), Rechnungsanlagen, Ladelisten und Auftragsbestätigungen."
        features:
          - "Eigene Schriftarten"
          - "Bilder und Logos"
          - "Seitenzähler"
          - "Erste Seite anders, z. B. die Adresse nur auf Seite 1"
        links:
          - label: "Technische Beschreibung (PDF)"
            url: "/doc/HIP-README.pdf"
      - title: "iMail"
        id: "imail"
        image: "/img/iMail-50x50.png"
        text: "Mail Client zum Versenden von modernen E-Mails direkt von der IBM i."
        features:
          - "Alle Arten von Attachments, auch inline im Mail-Body (z. B. für Signaturen)"
          - "Unterstützung aller gängigen Mailserver und diverser Verschlüsselungsmechanismen"
          - "Digital signierte Mails"
          - "Unicode – alle Sprachen werden unterstützt"
        links:
          - label: "iMail Readme (PDF)"
            url: "/doc/SNDMAIL-Doku.pdf"
---

## Allgemeines zu HIP & iMail

Beide Produkte laufen auf der IBM i als Batch-Job (Java Services) und werden über eine Data Queue angesteuert.
Dadurch lässt sich schnell und einfach mit Bordmitteln skalieren.
Auch Wiederanläufe übernimmt und überwacht der jeweilige Service automatisch.

Jedes Produkt enthält:

* Error-Handling
* Konfiguration
* Wiederanlauf
* Skalierung on Demand
* Logging
