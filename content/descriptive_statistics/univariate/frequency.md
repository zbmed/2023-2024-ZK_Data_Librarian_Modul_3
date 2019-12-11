+++
title = "Häufigkeiten"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 1
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b>2. </b>"
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

Kategoriale (nominale und ordinale) Variablen werden in **Häufigkeitstabellen** zusammengefasst. Dabei wird für jede Ausprägung die Anzahl der Beobachtungen gezählt:

{{% customnotice code %}}
```python
import pandas as pd
df = pd.read_csv("../data/Library_Usage.csv")
df['Age Range'].value_counts()
```
{{% /customnotice %}}

Mit der Funktion `value_counts()` können Sie sich absolute Häufigkeitstabellen ausgeben lassen. Mit dem zusätzlichen Argumentaufruf `normalize=True` werden relative Häufigkeiten berechnet:

{{% customnotice code %}}
```python
df['Age Range'].value_counts(normalize=True)
```
{{% /customnotice %}}

Der **Modus** ist dabei die Merkmalsausprägung, die die meisten Beobachtungen besitzen:
{{% customnotice code %}}
```python
df['Age Range'].mode()
```
{{% /customnotice %}}

#### Visualisierung

Häufigkeitstabellen lassen sich idealerweise als Balkendiagramme visualisieren:

{{% customnotice code %}}
```python
import pandas as pd
import seaborn as sns
sns.set()
%matplotlib inline

df = pd.read_csv("../data/Library_Usage.csv", na_values=["none"])
pd.crosstab(
    df['Provided Email Address'],
    df['Notice Preference Definition'],
    margins=False, normalize=0
).plot.bar()
```
{{% /customnotice %}}
