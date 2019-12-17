+++
title = "Series und DataFrames"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 1
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

`Series` und `DataFrames` sind die zentralen Datenstrukturen in Pandas. `Series` sind wie standardmäßige Listen in Python, mit dem wichtigen Unterschied, dass `Series` nur Werte eines einzelnen Datentyps enthalten können.

{{% customnotice code %}}
```python
import pandas as pd
x = pd.Series([34, 12, 23, 45])
print(x)
x.dtype
```
{{% /customnotice %}}

{{% customnotice tip %}}
Ein Datentyp ist die grundlegende Einheit, in der einzelne Werte in einer Programmiersprache vom Computer gespeichert und verarbeitet werden können. Beispiele für Datentypen in `pandas` sind: `float` für Gleitkommazahlen, `int` für Ganzzahlen, `bool` für binäre `True`, `False` Werte oder `datetime` für Datumswerte. Text wird im pandas-spezifischen Format `object` abgespeichert. Für einen `DataFrame` der beispielsweise in einer Variable mit dem Namen `df` gepeichert ist, können Sie sich die Datentypen jeder Spalte mit `df.dtypes` ausgeben lassen.
{{% /customnotice %}}

Ein `DataFrame` fasst mehrere `Series` **gleicher Länge** zu einer Datentabelle mit Zeilen (Beobachtungen), Spalten (Variablen) und Spaltennamen (Variablennamen) zusammen.

`DataFrames` können aus Daten in Form von Python Dictionaries konstruiert werden:

{{% customnotice code %}}
```python
import pandas as pd
data = {'month': ['Jan', 'Feb', 'Mar'],
        'temp': [-5, 2, 3],
         'below_zero': [True, False, False]}
df = pd.DataFrame(data)
print(df)
```
{{% /customnotice %}}

{{% customnotice exercise %}}
- Welches Skalenniveau besitzen die Variablen im obigen Beispiel?
- Sind die Variablen stetig oder diskret?
- Was ist der Datentype jeder einzelnen Spalte?
{{% /customnotice %}}

In der praktischen Datenanalyse werden Sie nur selten `DataFrames` oder `Series` manuell erstellen, sondern im Computer abgespeicherte Datentabellen aus anderen Formaten, wie Excel oder `.csv` einlesen.
