# Offene Punkte

Umgesetzte Punkte werden hier entfernt und in die jeweiligen Feature-Docs übernommen (Abschnitt „Entscheidungen“, Akzeptanzkriterien).

## Entscheidungen

* [Deployment](features/deployment.md): Am Server `AllowOverride FileInfo Indexes` für `/var/customers/webs/prouza/var/www/prouza.at/` freischalten (wie bei `buchbinderei` in `apache2.conf`), sonst greift `.htaccess` nicht. Danach Kontrolle und Feature auf `erledigt`.

## Inhalte prüfen

* **Startseite und Über mich:** Hero-Text und Kurzvorstellung sind neu formuliert – bitte prüfen.
* **Impressum:** Datenschutz-Abschnitt neu (keine Cookies/kein Tracking, Server-Logs). Bitte rechtlich prüfen, ebenso ob die Nutzungsbedingungen (erwähnen noch „Newsletter“) so bleiben sollen.
* **Bildnachweise im Impressum:** übernommen von der alten Seite. Durch die Projekt-Icons auf „Über mich“ werden Certificate, Database, SSL, Python, Java, Excel und Teacher wieder verwendet; Mail, Phone, Location, Like, Dislike u. a. nicht mehr (die Seite nutzt eigene SVG-Icons). Liste auf die verwendeten Bilder kürzen. Für das XML-Icon (`static/img/tech/xml.png`) gibt es keinen Nachweis – Quelle klären.
* **Credly-Links:** Für 2024–2026 gab es je mehrere Badges; verlinkt ist jeweils das erste. Prüfen, ob es das IBM-Champion-Badge ist.
* **SQL-Workshop** (`workshops/sql.md`): war auf der alten Seite nicht verlinkt und ist als Entwurf (`draft: true`) übernommen. Der Text „Basis Überblick“ beschreibt das ILE-Konzept (Kopierfehler). Korrigieren und veröffentlichen oder löschen?
* **Übersetzungen (wie auf der alten Seite):**
  * Englische News mit deutschem Text: `bash`, `cec2024`, `devops`, `git`, `gmake`, `opensource`, `rsync`, `security`, `vscode` (Titel sind übersetzt).
  * News `git-project`: auch die deutsche Fassung ist auf Englisch.
