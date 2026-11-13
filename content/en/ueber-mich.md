---
title: "About me"
slug: "about"
description: "Ing. Andreas Prouza – developer, trainer and consultant around IBM i."
layout: "about"
# Recognition: image = path under assets/, the first one is also shown on the home page
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
# Projects & experience. link: content path or external URL (optional), icons: logos under /img/… (optional)
projects:
  - title: "OBI (Object Builder for i)"
    icons: ["/img/obi/OBI-Logo-smaller.png", "/img/tech/python.png"]
    tech: ["Python"]
    text: "Automated build tool for IBM i – open source."
    link: "https://github.com/andreas-prouza/obi"
  - title: "OBI VS Code extension"
    icons: ["/img/obi/OBI-Logo-smaller.png", "/img/vscode.svg"]
    tech: ["TypeScript"]
    text: "OBI integrated directly into Visual Studio Code."
    link: "https://marketplace.visualstudio.com/items?itemName=andreas-prouza.obi"
  - title: "i-Releaser"
    icons: ["/img/i-releaser/logo2-icon.png", "/img/tech/python.png"]
    tech: ["Python"]
    text: "Workflow-based deployment tool – open source."
    link: "https://github.com/andreas-prouza/i-releaser"
  - title: "FTP client"
    icons: ["/img/data-transfer.png"]
    tech: ["RPG", "DB2"]
    text: "A Swiss army knife: exit points, error handling, individually configurable, restart function and more."
  - title: "Mail client (iMail)"
    icons: ["/img/iMail-50x50.png", "/img/tech/java.png"]
    tech: ["Java", "RPG"]
    text: "Mail client for sending modern mails on IBM i."
    link: "/produkte#imail"
  - title: "HTML 2 PDF (HIP)"
    icons: ["/img/tech/java.png"]
    tech: ["Java", "RPG"]
    text: "Converts HTML into PDF documents – e.g. modern invoices from an HTML template."
    link: "/produkte#html-into-pdf-hip"
  - title: "Warehouse scanner"
    icons: ["/img/tech/python.png", "/img/tech/db.png"]
    tech: ["Python", "DB2"]
    text: "A scan station in the warehouse provides data via a socket connection; Python reads it and writes it to DB2."
  - title: "Socket server"
    icons: ["/img/tech/python.png"]
    tech: ["Python", "DB2"]
    text: "Socket server on IBM i for communication and data exchange."
  - title: "Socket server with SSL"
    icons: ["/img/tech/ssl.png"]
    tech: ["RPG", "SSL"]
    text: "RPG-based socket server with an encrypted connection."
  - title: "WebAPI"
    icons: ["/img/tech/python.png", "/img/tech/db.png"]
    tech: ["Python", "DB2"]
    text: "Interface for database access."
  - title: "E-invoicing for the federal government"
    icons: ["/img/tech/java.png", "/img/tech/xml.png"]
    tech: ["Java", "Tomcat", "Exchange"]
    text: "Web service for sending XML invoices to the tax office."
  - title: "WebService server"
    icons: ["/img/tech/java.png", "/img/tech/xml.png"]
    tech: ["Java", "Tomcat", "RPG", "DB2", "SOAP", "WSDL"]
    text: "Web service for data exchange (send, receive, status queries), connected to IBM i processes (calling various RPG programs)."
  - title: "Database content comparison"
    icons: ["/img/tech/java.png", "/img/tech/db.png"]
    tech: ["Java", "DB2"]
    text: "Compare table contents of production and test systems after month-end closing – with high performance."
  - title: "Monitoring system"
    icons: ["/img/tech/java.png", "/img/tech/oracle.png"]
    tech: ["Java", "Oracle", "Nagios"]
    text: "Application integrated into Nagios for end-to-end tests."
  - title: "XML signing"
    icons: ["/img/tech/java.png", "/img/tech/xml.png", "/img/tech/certificate.png"]
    tech: ["Data Queue", "Java", "Certificates"]
    text: "Digital signing of XML documents with a certificate."
  - title: "XML validation"
    icons: ["/img/tech/java.png", "/img/tech/xml.png"]
    tech: ["Data Queue", "Java"]
    text: "Check XML for content and structure – also against the XSDs referenced in the XML."
  - title: "Voting app"
    icons: ["/img/tech/java.png"]
    tech: ["Java", "Android"]
    text: "App with registration, groups, calendar and an authorisation concept for regular surveys."
  - title: "SSL setup"
    icons: ["/img/tech/ssl.png", "/img/tech/certificate.png"]
    tech: ["Certificates", "DCM"]
    text: "Introduction of SSL concepts and encryption."
  - title: "Excel generator"
    icons: ["/img/tech/python.png", "/img/tech/excel.png"]
    tech: ["Python", "DB2"]
    text: "Turn the result of an SQL statement into an Excel file."
  - title: "RPG/CL source analysis"
    icons: ["/img/tech/python.png"]
    tech: ["Python"]
    text: "Analysis of qualified accesses, calls, DB accesses etc., output as Excel."
  - title: "Build concept"
    icons: ["/img/tech/gnu.png"]
    tech: ["GNU Make", "IBM i"]
    text: "Build tool for IBM i objects (RPG, CL, DSPF, PF, SQL objects etc.)."
  - title: "Source management"
    icons: ["/img/Git-logo.svg_-300x126.png"]
    tech: ["Git"]
    text: "Migration of all IBM i sources (RPG, DSPF, PF …) to the IFS, setup of the Git repo and import of all sources."
  - title: "Exit programs"
    icons: ["/img/tech/db.png"]
    tech: ["RPG"]
    text: "User-defined access control for IFS and SQL."
  - title: "Performance optimisation"
    icons: ["/img/tech/db.png"]
    tech: ["DB2"]
    text: "System load before: 100 % from 7 a.m. to 4 p.m. After optimisation: up to 55 % from 9 a.m. to 2 p.m."
  - title: "Academy"
    icons: ["/img/tech/classroom.png"]
    tech: ["Training"]
    text: "Teaching newcomers to IBM i for two months."
  - title: "COMMON Europe"
    icons: ["/img/tech/classroom.png"]
    tech: ["Talks"]
    text: "Numerous technical presentations at COMMON."
  - title: "Workshops"
    icons: ["/img/tech/classroom.png"]
    tech: ["Training"]
    text: "Training at companies all around IBM i."
    link: "/workshops"
---

I am a developer, trainer and consultant around IBM i.
My experience comes from numerous projects at companies in a wide range of industries – from RPG and DB2 to Java and Python to build and deployment tools from the open source world.

I enjoy passing on what I know: in workshops at companies, as a trainer for IBM i newcomers, with technical talks at COMMON Europe and with my own open source projects such as [OBI](https://github.com/andreas-prouza/obi) and [i-Releaser](https://github.com/andreas-prouza/i-releaser).
I have been named an IBM Champion every year from 2023 to 2026.
