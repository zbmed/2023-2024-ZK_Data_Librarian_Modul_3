+++
title = "Auswahl von Zeilen"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 4
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

Die Zeilen eines `DataFrame`s werden über einen **Zeilenindex** (`loc[]`), über die aufsteigenden **Zeilennummern** (`iloc[]`) oder über **logische Ausdrücke** (`[]` oder `loc[]`) referenziert.

Hier wird zuerst der wichtigste letzte Fall näher betrachtet:

{{% customnotice code %}}
```python
import pandas as pd
df = pd.read_csv("../data/Library_Usage.csv")
df[df['Total Checkouts'] > 10000]
```
{{% /customnotice %}}

Der Ausdruck `df['Total Checkouts'] > 10000` wird zuerst ausgewertet und ergibt eine boolesche `Series` mit Einträgen `True` wenn die Beobachtung mehr als `1000` Ausleihen getätigt hat und `False` sonst.

Mit einer booleschen `Series` lassen sich dann die Zeilen des `DataFrame` auswählen: Es werden genau die Zeilen zurückgegeben, bei denen die `Series` `True` Werte enthält.

Anstatt alles in einer Zeile zu schreiben, können wir auch eine Hilfsvariable erstellen, die den booleschen Vektor zwischenspeichert:

{{% customnotice code %}}
```python
filter = df['Total Checkouts'] > 10000
df[filter]
```
{{% /customnotice %}}

Für den booleschen Zeilenfilter können komplexe logische Ausdrücke unter Zuhilfenahme der Operatoren `<, >, &, |, ==` u.s.w. gebildet werden:

{{% customnotice code %}}
```python
filter = (df['Patron Type Definition'] == 'SENIOR') & (df['Notice Preference Definition'] == 'email')
df[filter]
```
{{% /customnotice %}}

{{% customnotice tip %}}

#### Logische Operatoren

Ausdruck | Beschreibung
:---: | :---:
`<`/ `<=` | kleiner/ kleiner gleich
`>` / `>=` | größer/ größer gleich
`==` | gleich
`!=` | ungleich
`&`  | elementweises logisches *und*
`|`  | elementweises logisches *oder*
`~`  | elementweise logische negation
{{% /customnotice %}}


{{% customnotice exercise %}}
1. Filter Sie den Datensatz nach Kindern unter 10 Jahren. Wie viele Einträge erhalten Sie?
2. Gibt es Personen mit mehr als `20000` Ausleihen?
3. Wie viele Personen stammen aus dem Norden San Franciscos ([Supervisor Districts]((https://en.wikipedia.org/wiki/San_Francisco_Board_of_Supervisors)) 1, 2 und 3)? Nutzen Sie die Funktion `Series.isin()`.
{{% /customnotice %}}
