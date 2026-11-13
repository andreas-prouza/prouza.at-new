---
title: "DevOps mit OpenSource"
date: 2022-04-05T20:22:33+02:00
image: "/img/devops2.png"
aliases: ["/posts/devops/"]
---

![GNU](/img/devops3.png)

### Entscheidung ###

> Die Entscheidung eines DevOps Konzepts beginnt mit der Reflektion der eigenen Bedürfnisse.

Es muss zunächst erkannt werden welches Ranking (von 1 bis 10) die einzelnen Komponenten eine Rolle spielen:

* Flexiblilität
* Integration in andere Systeme (JIRA, Thrello, ...)
* Integration in Entwicklungstools (Rdi, VSCode, Eclipse, IntelliJ IDEA, Visual Studio, ...)
* Nachvollziehbarkeit
* Rollback
* Brauche ich alles sofort?
* Zertifizierung nötig?
* Automatisierung

Ob nun eine OpenSource variante oder eine Kostenpflichtige genommen wird hat beides seine Vor- und Nachteile.  
Hier eine Zusammenfassung aus meiner Erfahrung:



| Open Source | Komponente | Kostenpflichtig |
| ------ | :------: | ------ |
| ![like][like] Einrichtung     | **Kosten** |  ![like][dislike] Lizenz (Produkt + Wartung) + Einrichtung |
| ![like][like] Step by Step    | **Konfiguration / Umstieg** |  ![like][dislike] Alles auf einmal + Einrichtung |
| ![like][dislike] "Basteltätigkeit"    | **Installation** |  ![like][like] Schnell und einfach |
| ![like][like] Community (> 1.000) | **Support** |  ![like][dislike]![like][like] Sehr abhängig vom Hersteller |
| ![like][dislike] Jede Komponente für sich | **Einschulung** |  ![like][like] Einfacher da 1 Tool |
| ![like][dislike] Komponenten müssen integriert werden | **Automatisierung** |  ![like][like] Tool Perfekt innerhalb vom Tool abgestimmt |
| ![like][like] Wird von allen Supported (RDi, VSCode, Eclipse, Visual Studio, PyCharm uvm.) | **Kompatibilität Entwicklungstools** |  ![like][dislike] Support nur sehr eingeschränkt (meist nur mit RDi) |
| ![like][like] Bester Support | **Kompatibilität zu externe Systeme** |  ![like][dislike]![like][like] Abhängig vom Hersteller |
| ![like][like] Neue Tools oder Komponenten können integriert werden | **Skalierbar** |   ![like][dislike]![like][like] Abhängig vom Hersteller |
| ![like][dislike] Hoch --> Einschulung nur punktuell nötig | **Bekanntheit** |  ![like][like] Sehr gering --> Einschulung Pflicht |
| ![like][like] Keine Einschränkung | **Support für andere Systeme** |  ![like][dislike] Abhängig vom Hersteller. Meist wenn, dann nur unter Voraussetzung |
| ![like][like] Alle Komponenten können einzeln getauscht werden | **Switch auf anderes Tool** |  ![like][dislike] Einzelne Komponente nur schwer bis gar nicht tauschbar. |


----

### Zusammengefasst ###

**Kostenpflichtig**

* Ein Sorglos-RundumPaket, bei dem es zwar viele Abhängigkeiten zu einem Hersteller gibt, dies jedoch egal ist, da dieses Produkt (**nach heutigem Wissensstand!**) für die nächsten 10-20 Jahre alles abdecken kann und können wird.
* Automatisierungn auf allen Ebenen out-of-the-box ist gewünscht
* Auch um Themen wie Rollback-Konzepte sollen out-of-the-box funktionieren
* Kosten sollten hier keine große Rolle spielen
  * Diverse Features müssen zusätzlich gekauft werden und sind nicht in der Basis vorhanden
* Einschränkungen in der Entwicklung sind egal, da sowieso weder jetzt noch in Zukunft auf andere Technologien oder Tools gesetzt werden


**OpenSource**

* Sehr mächtig in seinen Möglichkeiten. Auch ich lerne jeden Tag dazu was noch alles möglich ist.
* IT ist heute ein sich sehr schnell entwickelnder Bereich (IoT).  
  Wo gestern nur RPG, CL und DSPFs waren, haben wir heute zusätzlich WebServices, WebApplikationen, Mikroservices mit Java, Python & Co auf der IBM i und/oder auf Unix Plattformen.  
  Mit OpenSource ist es möglich schneller und einfacher (oder auch überhaupt!) in der Zukunft (bei Bedarf) dies zu integrieren.
* Es gibt keine Abhängigkeiten bei Herstellern
* Die "Jungen" kennen meist zumindest Teile davon schon aus dem Studium oder der Schule
* Die einzigen Kosten sind jene für die Einrichtung
* Eine langsame Umstellung (step by step)
* Da es kein out-of-the-box Tool ist, darf man keine Scheu haben zu "Basteln" 



[like]: /img/like.png
[dislike]: /img/dislike.png