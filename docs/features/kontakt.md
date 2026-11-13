# Kontakt

Status: `erledigt`

Kontaktaufnahme per Mail oder Telefon. Jede Seite endet mit einem Kontakt-Band (`layouts/_partials/cta.html`).

## Entscheidungen

* 2026-11-10: Kontakt über `mailto:` und `tel:`-Links; der Betreff wird je nach Seite vorbelegt (z. B. „Workshop: SQL Allgemein“).
* 2026-11-10: Kein Kontaktformular – das Formspree-Formular der alten Seite entfällt, siehe [Kontaktformular](kontaktformular.md).

## Akzeptanzkriterien

- **K1** Kontaktseite mit Karten für Mail und Telefon, beide klickbar.
- **K2** Kontaktdaten stehen nur in `hugo.toml` (`params.email`, `params.phone`).
- **K3** Kontakt-Band auf Startseite, Workshops, News und Produkten.

## Testabdeckung

* K1–K3: Sichtprüfung 2026-11-10
