# Kontaktformular

Status: `erledigt` – kein Formular.

Die alte Seite hatte ein Formular über [Formspree](https://formspree.io) (externer Dienst).

## Entscheidungen

* 2026-11-10: **Kein Kontaktformular.** Mail und Telefon reichen. Damit bleibt es bei: kein externer Dienst, keine Datenverarbeitung durch Dritte, CSP `form-action 'none'`.

Soll später doch ein Formular kommen, wäre es ein neues Feature (Status `entwurf`) mit den Fragen: Formspree (US-Dienst, Datenschutzerklärung, CSP-Ausnahme) oder eigenes Skript am Server, und Spamschutz ohne externes JavaScript.
