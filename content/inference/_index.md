+++
title = "Inferenzstatistik"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 400
# The title of the page in menu will be prefixed by this HTML content
 pre = "<b>4. </b>"
# pre = "<i class='fab fa-github'></i>"
# Table of content (toc) is enabled by default. Set this parameter to true to disable it.
# Note: Toc is always disabled for chapter pages
disableToc = "false"

# The title of the page in menu will be postfixed by this HTML content
post = ""
# Set the page as a chapter, changing the way it's displayed
chapter = true
# Hide a menu entry by setting this to true
hidden = false
# Display name of this page modifier. If set, it will be displayed in the footer.
LastModifierDisplayName = ""
# Email of this page modifier. If set with LastModifierDisplayName, it will be displayed in the footer
LastModifierEmail = ""
+++


### 10.02 – 16.02

# Grundlagen der Inferenzstatistik

Diese Einheit gibt einen Einblick in die Inferenzstatistik und stellt die Berechnung von Hypothesentest in Python vor.

## Ziele

- Führen Sie einen Hypothesentest für den Vergleich von zwei Mittelwerten durch.

{{% customnotice exercise %}}

### Projektaufgabe

Unterscheidet sich das Ausleihverhalten von jungen und älteren Bibliotheksnutzern signifikant voneinander?

- Erstellen Sie jeweils eine Liste der `Total Checkouts` für `YOUNG ADULT` und `SENIOR` aus der Spalte `Patron Type Defintion`.
- Wie viele Ausleihen pro Person haben die beiden Nutzergruppen jeweils im Mittel getätigt?
- Führen Sie einen Mittelwerttest durch. Verwenden Sie dafür die Funktion [ttes_ind](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.ttest_ind.html) aus dem `scipy.stats` Paket
- Senden Sie bis Freitag Ihren Report in Form eines integrierten *Python Notebooks* an [malte@bonart.de] (mailto:malte@bonart.de).

{{% /customnotice %}}
