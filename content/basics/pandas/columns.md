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

Einzelne Spalten können wie bei einem Python Dictionary mit `df[<name>]` ausgewählt werden. Mehre Spalten mit `df[[<name1>, <name2]]`. Wenn Sie mehrere Spalten auswählen erhalten Sie einen `DataFrame` zurück. Bei einer Spalte, eine `Series`. Das Ergebnis der Auswahl können Sie bei Bedarf wieder in einer Variablen abspeichern:

{{% customnotice code %}}
```python
x = df['Total Renewals']
df[['Total Renewals', 'Total Checkouts']]
filter = ['Total Renewals', 'Total Checkouts'] # auxiliary variable
subset = df[filter]
print(x)
print(subset)
```
{{% /customnotice %}}

Spalten können mit einer Zuweisung (`=`) überschrieben oder neu erstellt werden:

{{% customnotice code %}}
```python
df['dummy_variable'] = 5
{{% /customnotice %}}

Bei der Auswahl von Spalten und Zeilen wird **keine Kopie** des `DataFrame`s  oder der `Series` erstellt, sondern nur eine Referenz auf die ursprüngliche Tabelle. Wenn Sie Daten in der ursprünglichen Tabelle ändern, so ändert sich auch die Referenz:

{{% customnotice code %}}
```python
x = df['Total Renewals']
df['Total Renewals'] = 5
x
```
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

### Fallstudie: Feature Engineering

Ziel ist es, eine neue Variable `Membership Duration` zu erstellen, die für jeden Kunden die aktive Mitgliedschaft in Monaten seit der Registrierung misst. Die aktive Mitgliedschaft wird definiert als:

```shell
'Membership Duration' = ('Circulation Active Year' - 'Year Patron Registered')*12 + 'Circulation Active Month'
```

1. Die Spalte `Circulation Active Year` ist als Text und nicht als Zahl abgespeichert! Konvertieren Sie die Spalte in ein numerisches Format. Überschreiben Sie die ursprüngliche Variable mit den neuen Werten.


```python
pd.to_numeric(
  df['Circulation Active Year'], errors='coerce'
)
```


  2. Die Spalte `Circulation Active Month` muss in ein numerisches Format konvertiert werden. Nutzen Sie dazu den folgenden Code:

```python
df['Circulation Active Month'] = pd.to_datetime(
  df['Circulation Active Month'],
  errors='coerce',
  format="%B"
)
df['Circulation Active Month'] = df['Circulation Active Month'].dt.month
```

  3. Berechnen Sie nun die aktive Mitgliedschaftsdauer in Monaten wie oben definiert.

  4. Nehmen Sie an, dass Einträge mit fehlenden Werten eine aktive Mitgliedschaft von Null Monaten bedeuten. Ersetzen Sie dazu alle `NaN` values in der neuen Variable mit der Zahl `0`:

```python
df['Membership Duration'].fillna(0, inplace=True)
```

{{% /customnotice %}}
