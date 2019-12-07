+++
title = "Auswahl und Erstellung von Spalten"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 3
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

Die Spalten eines `DataFrame`s werden über einen **Spaltenindex** referenziert. Üblicherweise besteht der Spaltenindex aus Spaltennamen in Textform:

{{% customnotice code %}}
```python
import pandas as pd
df = pd.read_csv("../data/Library_Usage.csv")
df.columns
```
{{% /customnotice %}}

Einzelne Spalten können wie bei einem Python Dictionary mit `df[<name>]` ausgewählt werden. Mehre Spalten mit `df[[<name1>, <name2]]`:

{{% customnotice code %}}
```python
df['Total Renewals']
df[['Total Renewals', 'Total Checkouts']]
filter = ['Total Renewals', 'Total Checkouts'] # auxiliary variable
df[filter]
```
{{% /customnotice %}}

Neue Spalten können mit einer Zuweisung (`=`) erstellt werden:
{{% customnotice code %}}
```python
df['dummy_variable'] = 5
{{% /customnotice %}}

Berechnungen auf schon bestehenden Variablen können auch direkt einer neuen Spalte zugeordnet werden:


{{% customnotice code %}}
```python
import numpy as np

df['is_adult'] = df['Patron Type Definition'] == 'ADULT'
df['log_renewals'] = np.log(df['Total Renewals'])
```
{{% /customnotice %}}

Im ersten Beispiel wurde zuerst die Anweisung `df['Patron Type Definition'] == 'ADULT'` durchgeführt. Das implizite Ergebnis dieser Anweisung ist eine `Series` mit booleschen Werten (`True` oder `False`). Die neu erstellte `Series` wird dann in einer neuen Spalte `is_adult` dem `DataFrame` angehängt.

Im zweiten Beispiel wurde der Logarithmus auf den Werten der Spalte `Total Renewals` berechnet und einer neuen Spalte `log_renewals` zugewiesen.


{{% customnotice exercise %}}
- Die Spalte `Circulation Active Year` ist als Text und nicht als Zahl abgespeichert! Konvertieren Sie die Spalte in ein numerisches Format:
  ```python
  pd.to_numeric(df['Circulation Active Year'], errors='coerce')
  ```
  Überschreiben Sie die ursprüngliche Variable mit den neuen Werten.
- Erstellen Sie eine neue Variable `'Membership Duration'` die die Zeit **in Jahren** zwischen der Registrierung im System und der letzten Ausleihaktivität des Kunden enthält.
{{% /customnotice %}} 