+++
title = "Wichtige Funktionen"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 10
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b>1. </b>"
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

In der kommenden Woche erhalten Sie einen Überblick über die vielen deskriptiven Statistiken, die sich mit `pandas` ausrechnen lassen. Hier noch einmal eine Zusammenfassung und ein erster Ausblick:

Mit `df.head()` können Sie sich die ersten $n$ Zeilen eines `DataFrame`s anzeigen lassen:

{{% customnotice code %}}
```python
import pandas as pd
df = pd.read_csv("../data/Library_Usage.csv")
df.head()
```
{{% /customnotice %}}


{{% customnotice exercise %}}
Schauen Sie sich die Dokumentation für die Funktion `head()` [hier](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.head.html) an. Wie können Sie sich die ersten $100$ Zeilen anzeigen lassen?
{{% /customnotice %}}


Mit `df.info()` erhalten Sie speicherbezogene Informationen über das Objekt. Mit `df.describe()` werden nützliche deskriptive Statistiken für alle numerischen Spalten eines Datensatzes ausgegeben. Um alle Spalten miteinzubeziehen nutzen sie das Funktionsargument `include='all'`:

{{% customnotice code %}}
```python
df.describe(include='all')
```
{{% /customnotice %}}

Viele Funktionen funktionieren für `DataFrame`s und `Series` gleichermaßen:

{{% customnotice code %}}
```python
print(df.min())
print(df['Total Renewals'].min())
```
{{% /customnotice %}}

Mit der Funktion `sum()` werden die Werte einer Spalte aufaddiert:

{{% customnotice code %}}
```python
df['Total Renewals'].sum()
```
{{% /customnotice %}}



### read in `.csv` files

```python
import pandas as pd
file_path = './Library_Usage.csv'
df = pd.read_csv(file_path)
```

### show column names and their types

```
df.columns
df.dtypes
```

### number of rows

```python
len(df)
```

### summarize functions

```
df.head()
df.tail()
df.describe()
```
