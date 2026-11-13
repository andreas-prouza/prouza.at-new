# Architektur – Richtlinien

- Plattform: statische Webseite, kein Server-Code, keine Datenbank
- Generator: Hugo (ein Binary). Kein Node/npm, kein Python, kein Theme
- Betrieb: eigener Webserver (Apache, prouza.at), Upload per rsync – siehe [Deployment](features/deployment.md)
- Inhalte: Markdown mit Front Matter. Strukturierte Daten (Pakete, Projekte, Produkte, Leistungen) stehen im Front Matter, nicht im Template
- Sprachen: Deutsch (Standard) und Englisch, jede Seite in beiden – siehe [Mehrsprachigkeit](features/mehrsprachigkeit.md)
- **Sicherheit und Datenschutz haben oberste Priorität.** Sicherheit geht vor Feature, außer es wird explizit anders entschieden.
  - Keine externen Ressourcen: keine CDN-Skripte, keine Google Fonts, keine eingebetteten Widgets (z. B. Credly, YouTube). Externe Dienste nur als normaler Link.
  - Kein JavaScript. Was ohne JS nicht geht, wird zuerst hier besprochen.
  - Keine Cookies, kein Tracking, keine Analyse.
  - Kein rohes HTML im Markdown (`unsafe = false`).
  - Security-Header (CSP usw.) über den Webserver, siehe [technik.md](technik.md#sicherheit).


# Abhängigkeiten

Es gibt keine Packages. Sollte doch eines nötig werden (Hugo-Modul, JS- oder CSS-Bibliothek), muss es folgende Kriterien erfüllen:

* Keine bekannten Sicherheitslücken
* Hoher Bekanntheitsgrad
* Ein GitHub-Repo existiert, mit mehreren Forks und mindestens 200 Sternen
* Wird selbst ausgeliefert (unter `assets/` oder `static/`), nicht von einem CDN geladen

Sollte auf Grund der Kriterien kein Package gefunden werden, frag nach dem weiteren Vorgehen und gib aus, welche Kriterien nicht erfüllt sind.
Geprüfte Packages und genehmigte Ausnahmen in [technik.md](technik.md#package-prüfung) eintragen.


# GUI

* Modern, ruhig, viel Weißraum; Farben aus dem Logo (Navy + Petrol), siehe [Design](features/design.md)
* Mobil gleichwertig zum Desktop
* Hell- und Dunkelmodus nach Systemeinstellung
* Icons als Inline-SVG (`layouts/_partials/icon.html`), keine Icon-Fonts
* Barrierearm: semantisches HTML, Alt-Texte, sichtbarer Fokus, Kontrast


# Update

* Vor jedem Deployment `./scripts/pruefen.sh`
* Pflege ein `CHANGELOG.md`
