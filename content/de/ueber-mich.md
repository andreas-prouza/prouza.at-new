---
title: "Über mich"
description: "Ing. Andreas Prouza – Entwickler, Trainer und Berater rund um die IBM i."
layout: "about"
aliases: ["/about/"]
# Auszeichnungen: image = Pfad unter assets/, die erste erscheint auch auf der Startseite
badges:
  - title: "IBM Champion 2026"
    image: "img/badges/ibm-champion-2026.png"
    url: "https://www.credly.com/badges/95ee0b33-fb68-41b0-958f-d50ba0ba7587"
  - title: "IBM Champion 2025"
    image: "img/badges/ibm-champion-2025.png"
    url: "https://www.credly.com/badges/80fff602-5e44-4857-b56a-96f5d351528f"
  - title: "IBM Champion 2024"
    image: "img/badges/ibm-champion-2024.png"
    url: "https://www.credly.com/badges/9f946c91-6551-4f92-ad72-9c82bbe069f8"
  - title: "Speaker COMMON Europe Congress 2024"
    image: "img/badges/common-europe.png"
    url: "https://www.credly.com/badges/c70817e6-3acb-4833-9333-945b6e6a73cb"
  - title: "IBM Champion 2023"
    image: "img/badges/ibm-champion-2023.png"
    url: "https://www.credly.com/badges/add33213-4c03-425d-b75f-7d9e386e6e54"
# Projekte & Erfahrung. link: Content-Pfad oder externe URL (optional), icons: Logos unter /img/… (optional)
projects:
  - title: "OBI (Object Builder for i)"
    icons: ["/img/obi/OBI-Logo-smaller.png", "/img/tech/python.png"]
    tech: ["Python"]
    text: "Automatisiertes Build-Tool für die IBM i – Open Source."
    link: "https://github.com/andreas-prouza/obi"
  - title: "OBI VS Code Extension"
    icons: ["/img/obi/OBI-Logo-smaller.png", "/img/vscode.svg"]
    tech: ["TypeScript"]
    text: "OBI als Erweiterung direkt in Visual Studio Code."
    link: "https://marketplace.visualstudio.com/items?itemName=andreas-prouza.obi"
  - title: "i-Releaser"
    icons: ["/img/i-releaser/logo2-icon.png", "/img/tech/python.png"]
    tech: ["Python"]
    text: "Workflow-basiertes Deployment-Tool – Open Source."
    link: "https://github.com/andreas-prouza/i-releaser"
  - title: "FTP Client"
    icons: ["/img/data-transfer.png"]
    tech: ["RPG", "DB2"]
    text: "Die eierlegende Wollmilchsau: mit Exit-Points, Error-Handling, konfigurierbar, Wiederanlauf u. v. m."
  - title: "Mail Client (iMail)"
    icons: ["/img/iMail-50x50.png", "/img/tech/java.png"]
    tech: ["Java", "RPG"]
    text: "Mail Client zum Versenden von modernen Mails auf der IBM i."
    link: "/produkte#imail"
  - title: "HTML 2 PDF (HIP)"
    icons: ["/img/tech/java.png"]
    tech: ["Java", "RPG"]
    text: "Konvertiert HTML in PDF-Dokumente – z. B. moderne Rechnungen aus einem HTML-Template."
    link: "/produkte#html-into-pdf-hip"
  - title: "Lager-Scanner"
    icons: ["/img/tech/python.png", "/img/tech/db.png"]
    tech: ["Python", "DB2"]
    text: "Eine Scan-Station im Lager stellt Daten über eine Socket-Verbindung bereit; Python liest sie ein und schreibt sie in die DB2."
  - title: "Socket Server"
    icons: ["/img/tech/python.png"]
    tech: ["Python", "DB2"]
    text: "Socket Server auf der IBM i zur Kommunikation und zum Datenaustausch."
  - title: "Socket Server mit SSL"
    icons: ["/img/tech/ssl.png"]
    tech: ["RPG", "SSL"]
    text: "Socket Server auf RPG-Basis mit verschlüsselter Verbindung."
  - title: "WebAPI"
    icons: ["/img/tech/python.png", "/img/tech/db.png"]
    tech: ["Python", "DB2"]
    text: "Verbindungsschnittstelle für Datenbankzugriffe."
  - title: "E-Rechnung an den Bund"
    icons: ["/img/tech/java.png", "/img/tech/xml.png"]
    tech: ["Java", "Tomcat", "Exchange"]
    text: "Webservice zum Senden von XML-Rechnungen an das Finanzamt."
  - title: "WebService Server"
    icons: ["/img/tech/java.png", "/img/tech/xml.png"]
    tech: ["Java", "Tomcat", "RPG", "DB2", "SOAP", "WSDL"]
    text: "Webservice für den Datenaustausch (senden, empfangen, Statusabfragen) mit Anbindung an IBM i-Prozesse (Aufruf diverser RPG-Programme)."
  - title: "Datenbank-Inhaltsvergleich"
    icons: ["/img/tech/java.png", "/img/tech/db.png"]
    tech: ["Java", "DB2"]
    text: "Inhalte der Tabellen aus Produktion und Testsystem nach dem Monatsabschluss vergleichen – performant."
  - title: "Monitoring-System"
    icons: ["/img/tech/java.png", "/img/tech/oracle.png"]
    tech: ["Java", "Oracle", "Nagios"]
    text: "Anwendung mit Integration in Nagios für End-to-End-Tests."
  - title: "XML-Signierung"
    icons: ["/img/tech/java.png", "/img/tech/xml.png", "/img/tech/certificate.png"]
    tech: ["Data Queue", "Java", "Zertifikate"]
    text: "Digitale Signierung von XML-Dokumenten mit einem Zertifikat."
  - title: "XML-Validierung"
    icons: ["/img/tech/java.png", "/img/tech/xml.png"]
    tech: ["Data Queue", "Java"]
    text: "XML auf Inhalt und Struktur prüfen – auch gegen die im XML hinterlegten XSDs."
  - title: "Voting App"
    icons: ["/img/tech/java.png"]
    tech: ["Java", "Android"]
    text: "App mit Registrierung, Gruppenfunktion, Kalender und Berechtigungskonzept für regelmäßige Umfragen."
  - title: "SSL einrichten"
    icons: ["/img/tech/ssl.png", "/img/tech/certificate.png"]
    tech: ["Zertifikate", "DCM"]
    text: "Einführung von SSL-Konzepten und Verschlüsselung."
  - title: "Excel-Generator"
    icons: ["/img/tech/python.png", "/img/tech/excel.png"]
    tech: ["Python", "DB2"]
    text: "Ergebnis einer SQL-Anweisung als Excel-Datei erzeugen."
  - title: "RPG/CL-Source-Analyse"
    icons: ["/img/tech/python.png"]
    tech: ["Python"]
    text: "Analyse von qualifizierten Zugriffen, Calls, DB-Zugriffen usw., Ausgabe als Excel."
  - title: "Build-Konzept"
    icons: ["/img/tech/gnu.png"]
    tech: ["GNU Make", "IBM i"]
    text: "Build-Tool für IBM i-Objekte (RPG, CL, DSPF, PF, SQL-Objekte usw.)."
  - title: "Sourceverwaltung"
    icons: ["/img/Git-logo.svg_-300x126.png"]
    tech: ["Git"]
    text: "Migration aller IBM i-Sourcen (RPG, DSPF, PF …) ins IFS, Einrichtung des Git-Repos und Import aller Sourcen."
  - title: "Exit-Programme"
    icons: ["/img/tech/db.png"]
    tech: ["RPG"]
    text: "Benutzerdefinierte Zugriffssteuerung für IFS und SQL."
  - title: "Performance-Optimierung"
    icons: ["/img/tech/db.png"]
    tech: ["DB2"]
    text: "Systemauslastung vorher von 7 bis 16 Uhr bei 100 %, nach der Optimierung von 9 bis 14 Uhr bei bis zu 55 %."
  - title: "Academy"
    icons: ["/img/tech/classroom.png"]
    tech: ["Schulung"]
    text: "Neuzugänge zwei Monate lang in die IBM i einführen."
  - title: "COMMON Europe"
    icons: ["/img/tech/classroom.png"]
    tech: ["Vorträge"]
    text: "Zahlreiche Fachvorträge bei COMMON."
  - title: "Workshops"
    icons: ["/img/tech/classroom.png"]
    tech: ["Schulung"]
    text: "Schulungen bei Firmen rund um die IBM i."
    link: "/workshops"
---

Ich bin Entwickler, Trainer und Berater rund um die IBM i.
Meine Erfahrung stammt aus zahlreichen Projekten bei Unternehmen verschiedenster Branchen – von RPG und DB2 über Java und Python bis zu Build- und Deployment-Werkzeugen aus der Open-Source-Welt.

Mein Wissen gebe ich gerne weiter: in Workshops bei Firmen, als Trainer für IBM i-Neueinsteiger, mit Fachvorträgen bei COMMON Europe und mit eigenen Open-Source-Projekten wie [OBI](https://github.com/andreas-prouza/obi) und [i-Releaser](https://github.com/andreas-prouza/i-releaser).
Von 2023 bis 2026 wurde ich jedes Jahr als IBM Champion ausgezeichnet.
