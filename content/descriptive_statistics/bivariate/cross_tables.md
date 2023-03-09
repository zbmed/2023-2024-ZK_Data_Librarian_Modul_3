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



Notice Preference Definition	| Email 	| None | Phone 	| Print | All
:--- | :--- | :--- | :--- | :--- | :---
**Provided Email Address** | | | | |
False 	|476 |	2668 |	 35235 | 7173 | 45552
True 	|391138 |	32  	|324 | 69 | 391563
All  | 391614 |	2700 	| 35559 	|7242 | 437115

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

Notice Preference Definition	| Email 	| None | Phone 	| Print |	All
:--- | :--- | :--- | :--- | :--- | :---
**Provided Email Address** | | | | |			
False 	|0.001215 	|0.988148 |	0.990888 |	0.990472 | 0.104211
True 	|0.998785 	|0.011852 	|0.009112 	| 0.009528 | 0.895789

> Von den Kunden, die per Mail informiert werden möchten, haben 99.88% eine Mail Adresse angegeben. Knapp unter 1% der Kunden, die telefonisch informiert werden möchten, haben eine Mail Adresse angegeben. 

Wird das Argument `normalize=0` verwendet, so werden die Zeilen der Tabelle normalisiert. Entsprecht ändern sich die Interpretation:

Notice Preference Definition |	Email 	| None | Phone 	| Print |	All
:--- | :--- | :--- | :---  | :--- | :---
**Provided Email Address** | | | | | 			
False 	|0.010450 	| 0.058570 	| 0.773512 	| 0.157468
True 	|0.998915 	| 0.000082 	| 0.000827 	| 0.000176
All 	|0.895906 	| 0.006177 	| 0.081349 	| 0.016568

> Von den Kunden, die eine Mail angeben haben, möchten mehr als 99% per Mail informiert werden. Von den Kunden, die keine Mail angegeben haben, möchten 77% per Telefon informiert werden.
