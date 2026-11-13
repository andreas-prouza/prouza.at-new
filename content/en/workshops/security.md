---
title: "Security"
group: konzepte
weight: 30
aliases: ["/schulungen-security/"]
packages:
  - name: "Basic overview"
    duration: "1/2 day"
    items:
      - "Here you will find an overview of the areas and what to look out for"
  - name: "Advanced"
    duration: "1 day"
    items:
      - "Basic overview"
      - "Topics are shown in practice and how they can be implemented"
---

A topic that is unfortunately far too underestimated.  
Without encryption it is possible to read **all user passwords in plain text**. (I also show how and why.)

In this workshop I will give an overview of: 

* KeyStores
  * What is it?
  * What do I need it for?
  * Who manages them?
  * Where can I find them?
* SSL certificates
  * How to read them?
  * What are certificate chains (chain)?
  * When is a certificate trustworthy?
* Certificate strategy in the company
  * Root certificates
    * What is their advantage?
  * What do I have to consider when rolling out to clients?
* SSL encryption for various protocols (HTTP, TELNET, FTP, SSH)
  * Apache configuration
  * NGINX configuration
  * Configure Telnet for encryption
* Working with Digital Certificate Manager (DCM)
* Tools that make my life easier
* Security also in daily development

This workshop also shows very simple tricks that are not shown in any security training:  
For example, to be able to identify fishing mails quickly and securely.

In addition to encryption, the development itself is also a security risk.  
Here I show how the security aspect can be maintained with DB access.
