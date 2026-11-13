---
title: "Products"
slug: "products"
description: "Open source tools for build and deployment, and proven services for PDF and mail on IBM i."
layout: "products"
# Groups with cards. id = anchor (e.g. /produkte#imail), image = path under static/, links: label + url
groups:
  - title: "Open source"
    icon: "code"
    intro: "Freely available on [GitHub](https://github.com/andreas-prouza)."
    items:
      - title: "OBI (Object Builder for i)"
        id: "obi"
        image: "/img/obi/OBI-Logo-smaller.png"
        text: "Automated build tool for IBM i: builds objects respecting all dependencies in the right order, with job logs and spool files per object."
        links:
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/obi"
      - title: "OBI for VS Code"
        id: "obi-vscode"
        image: "/img/obi/OBI-Logo-smaller.png"
        text: "OBI as an extension directly in Visual Studio Code."
        links:
          - label: "Marketplace"
            url: "https://marketplace.visualstudio.com/items?itemName=andreas-prouza.obi"
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/obi-extension"
      - title: "OBI IDE integration"
        id: "obi-ide"
        image: "/img/obi/OBI-Logo-smaller.png"
        text: "Client for OBI: integration into VS Code or RDi and syncing sources with IBM i."
        links:
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/ibm-i-build-obi"
      - title: "i-Releaser"
        id: "i-releaser"
        image: "/img/i-releaser/logo2-icon.png"
        text: "Workflow-based deployment tool for IBM i."
        links:
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/i-releaser"
      - title: "Python WebAPI on IBM i"
        id: "python-webapi"
        text: "Web API in Python as an interface for database access on IBM i."
        links:
          - label: "GitHub"
            url: "https://github.com/andreas-prouza/python-webapi"
  - title: "Other products"
    icon: "package"
    intro: "Services for IBM i that run as batch jobs and are triggered via a data queue."
    items:
      - title: "HTML Into PDF (HIP)"
        id: "html-into-pdf-hip"
        image: "/img/Konvertierung-300x125.png"
        text: "Creates PDFs from an HTML template. Placeholders in the template are filled at runtime – producing PDFs in your corporate design. In use for invoices (including complex items), invoice attachments, loading lists and order confirmations."
        features:
          - "Custom fonts"
          - "Images and logos"
          - "Page counters"
          - "Different first page, e.g. the address only on page 1"
        links:
          - label: "Technical description (PDF)"
            url: "/doc/HIP-README.pdf"
      - title: "iMail"
        id: "imail"
        image: "/img/iMail-50x50.png"
        text: "Mail client for sending modern e-mails directly from IBM i."
        features:
          - "All kinds of attachments, also inline in the mail body (e.g. for signatures)"
          - "Supports all common mail servers and various encryption mechanisms"
          - "Digitally signed mails"
          - "Unicode – all languages are supported"
        links:
          - label: "iMail readme (PDF)"
            url: "/doc/SNDMAIL-Doku.pdf"
---

## About HIP & iMail

Both products run on IBM i as batch jobs (Java services) and are triggered via a data queue.
This makes it quick and easy to scale with on-board resources.
Restarts are also handled and monitored automatically by the respective service.

Every product includes:

* Error handling
* Configuration
* Restart
* Scaling on demand
* Logging
