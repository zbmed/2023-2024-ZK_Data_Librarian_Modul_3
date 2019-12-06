+++
title = "Univariate Verteilungen"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 30
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b>3. </b>"
# pre = "<i class='fab fa-github'></i>"
# Table of content (toc) is enabled by default. Set this parameter to true to disable it.
# Note: Toc is always disabled for chapter pages
disableToc = "false"

# The title of the page in menu will be postfixed by this HTML content
post = ""
# Set the page as a chapter, changing the way it's displayed
chapter = false
# Hide a menu entry by setting this to true
hidden = false
# Display name of this page modifier. If set, it will be displayed in the footer.
LastModifierDisplayName = ""
# Email of this page modifier. If set with LastModifierDisplayName, it will be displayed in the footer
LastModifierEmail = ""
+++

Neben der zentralen Lage einer Verteilung, beschrieben durch Lagemaße, und die Streuung, beschrieben durch Streuungsmaße, gibt es noch andere Eigenschaften, die die Form einer Verteilung charakterisieren.

Diese Eigenschaften lassen sich am besten durch Histogramme sichtbar machen.

## Symmetrie

Linksschief


Rechtsschief


## Modus

Unimodal

bimodal

multimodal


Mit dem folgenden Beispiel können Sie ein Histogram der Anzahl der Ausleihen im Datensatz erstellen:

{{% customnotice code %}}
```
import pandas as pd
import seaborn as sns
sns.set()

df = pd.read_csv("../data/Library_Usage.csv")
df['Total Checkouts'].plot.hist(bins=100)
```
{{% /customnotice%}}

{{% customnotice exercise %}}

- Charakterisieren Sie die Verteilung der Ausleihen pro Kunde
- Filter Sie den Datensatz nach Personen, die weniger als 100 Ausleihen haben und schauen Sie sich die Verteilung im Histogram an.

{{% /customnotice%}}
