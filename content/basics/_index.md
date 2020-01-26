+++
title = "Grundlagen"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 200
# The title of the page in menu will be prefixed by this HTML content
 pre = "<b>2. </b>"
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


### 27.01 – 02.02

# Grundlagen der Datenanalyse in Python

Diese Einheit gibt eine Einführung in die Aufgaben und grundlegenden Begriffe der angewandten Statistik. Im zweiten Teil wird das `pandas` Paket vorgestellt und gezeigt, wie Datensätze eingelesen und bearbeitet werden können. Manche Lektionen und Aufgaben sind als *Exkurs* markiert. Diese Aufgaben sind für Interessierte und dauern meist etwas länger oder sind schwieriger zu lösen.

Versuchen Sie zuerst die Aufgaben innerhalb der angegeben Zeit selbstständig zu lösen. Versuchen Sie danach mit Hilfe der Musterlösung die Lösung nachzuvollziehen. Schreiben Sie sich bei Problemen Ihre Fragen auf, damit wir diese am Präsenztag zusammen besprechen können. 


## Ziele

- Beschreiben Sie Datensätze mit dem statistischen Grundvokabular
- Lesen Sie Datensätze als `DataFrame`s in Python ein und aus
- Filtern Sie `DataFrame`s nach Spalten oder Zeilen
- Erstellen Sie neue Variablen
{{% customnotice exercise %}}

### Projektaufgabe

Die Pressestelle der San Francisco Public Library möchte einen Online-Artikel zum Kundenstamm der Bibliothek erstellen. Dazu hat sie Ihnen [einen Datensatz](/data-librarian/organisation/dataset/) geschickt, den Sie auswerten sollen.

1. Erstellen Sie eine Beschreibung des Datensatzes unter Verwendung des [statistischen Grundvokabulars](/data-librarian/basics/basic_terms/).
2. [Lesen Sie den Datensatz ein](/data-librarian/basics/pandas/io)
3. Bereinigen Sie den Datensatz von [fehlenden Werten](/data-librarian/basics/pandas/na) und berechnen Sie [die neue Variable](/data-librarian/basics/pandas/columns/#fallstudie-feature-engineering) `Membership Duration`.


{{% /customnotice %}}
