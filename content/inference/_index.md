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

# Ausblick: Grundlagen der Inferenzstatistik

Diese Einheit gibt einen ersten Einblick in die angewandte Inferenzstatistik mit dem Bootstrapping-Verfahren und stellt die Berechnung von Konfidenzintervallen für den Mittelwerte und Median in Python vor. Die Inhalte und Aufgaben dieser Einheit sind etwas anspruchsvoller als die bisherigen Lektionen.

## Ziele

- Testen Sie, ob signifikante Unterschiede zwischen den Mittelwerten zweier Populationen bestehen.

{{% customnotice exercise %}}

### Optionale Projektaufgabe

Unterscheidet sich das Ausleihverhalten von jungen und älteren Bibliotheksnutzern signifikant voneinander? Gehen Sie zur Beantwortung der Frage die folgenden Schritte durch:

1. Lesen Sie den Datensatz ein 
2. Um eine homogene Stichprobe zu erhalten filtern Sie nach Bibliothekskunden die sich im Jahr 2010 registriert haben und auch noch im Jahr 2016 (als der Datensatz erstellt wurde) aktiv waren.
3. Erstellen Sie nun eine `Series` der `Total Checkouts` für zwei Sub-Population: Betrachten Sie beispielsweise `YOUNG ADULT`s und `SENIOR` aus der Variable `Patron Type Definition`. 
    - Wie viele Beobachtungen sind jeweils in den Stichproben? 
    - Was sind deren Mittelwerte (Median, arithmetisches Mittel)? 
4. Berechnen Sie das Konfidenzinterval für die Differenz der Mittelwerte (Mediane) mit dem Bootstrapping Verfahren!
5. Wie interpretieren Sie das Ergebniss? Unterscheiden sich die Mittelwerte signifikant voneinander?
6. Ändert sich das Ergebniss, wenn Sie das Signifikanzniveau $\alpha$ ändern?
7. Führen Sie weitere Analysen mit verschiedenen Sub-populationen durch. 

Schicken Sie bis spätestens zum Projekttag Ihren Report in Form eines integrierten Python Notebooks an malte@bonart.de.

{{% /customnotice %}}
