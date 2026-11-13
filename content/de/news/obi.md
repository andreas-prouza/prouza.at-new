---
title: "OBI (Object Builder for i)"
date: 2026-11-10T09:00:00+01:00
image: "/img/obi/OBI-Logo-2.png"
aliases: ["/posts/obi/"]
---

![obi](/img/obi/OBI-Logo-2.png)

Automatisiertes Build Tool [OBI](https://github.com/andreas-prouza/ibm-i-build-obi).

* Abhängigkeitsliste
* Korrekte Reihenfolge der Builds
* Integration in RDi und vscode

Details findet ihr auf GitHub: https://github.com/andreas-prouza/ibm-i-build-obi


### Integration in RDi

![rdi](/img/obi/rdi-actions.png)

### Integration in vscode

![rdi](/img/obi/vscode-actions.png)

### Build Summary

* Jeder Task enthält sein eigenes Joblog & Spool file  
  Kein Durchforsten von langen Joblog mehr

![compile-overview](/img/obi/compile-overview.png)


### Vorschau anzeigen

* Was hat sich geändert und muss kompiliert werden
* Abhängige Sourcen
* Reihenfolge des Builds
* Generierte Befehle für jede Source

![changes](/img/obi/vscode-show-change.png)
