+++
title = "Kreuztabellen"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 35
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

Um zwei ordinale oder nominale Variablen miteinander zu vergleichen, eignen sich **Kreuztabellen**. Jeder Wert in der Kreuztabelle entspricht der Anzahl der Beobachtungen im Datensatz mit genau dieser Kombination an Merkmalsausprägungen.

Hier ein Beispiel (mit dem Argument `na_values="none"` markiert `pandas` die `"none"` Einträge in der Spalte `'Notice Preference Definition'` als fehlende Werte):

{{% customnotice code %}}
```python
import pandas as pd

df = pd.read_csv(
    "../data/Library_Usage.csv", 
    na_values="none"
)
pd.crosstab(
    df['Provided Email Address'],
    df['Notice Preference Definition'],
    margins=True
)
```
{{% /customnotice %}}



Notice Preference 	| email 	| phone 	| print | all
:--- | :--- | :--- | :--- | :---
**Provided Email Address** | | | |
False 	|95 |	58362 |	 28569| 87026
True 	|323842 |	9810  	|2767 | 336419
All  | 323937 |	68172 	| 31336 	|423445

Eine Kreuztabelle mit absoluten Werten ist häufig schwer zu interpretieren, wenn die Randverteilungen ungleich verteilt sind. Deswegen sollten die Werte entweder Spaltenweise oder Zeilenweise **normalisiert** werden:

{{% customnotice code %}}
```python
pd.crosstab(
    df['Provided Email Address'],
    df['Notice Preference Definition'],
    margins=True, normalize=1
)
```
{{% /customnotice %}}

Ergibt eine Normalisierung der Spalten, sodass sich diese jeweils zu 100% aufaddieren:

Notice Preference 	| email 	| phone 	| print |	all
:--- | :--- | :--- | :--- | :---
**Provided Email Address** | | | |			
False 	|0.000293 	|0.856099 |	0.911699 |	0.205519
True 	|0.999707 	|0.143901 	|0.088301 	|0.794481

> Von den Kunden, die per Mail informiert werden möchten, haben 99.97% eine Mail Adresse angegeben. Nur 8.83% der Kunden die per Telefon informiert werden möchten, haben eine Mail Adresse angegeben.

Wird das Argument `normalize=0` verwendet, so werden die Zeilen der Tabelle normalisiert. Entsprecht ändern sich die Interpretation:

> Von den Kunden, die eine Mail angeben haben, möchten 96% per Mail informiert werden. Von den Kunden, die keine Mail angegeben haben, möchten 67% per Telefon informiert werden.
