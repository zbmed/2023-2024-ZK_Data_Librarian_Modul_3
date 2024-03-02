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
    df['Notice Preference Definition'],
    df['Age Range'],
    margins=True
)
```
{{% /customnotice %}}



Age Range	| 0 to 9 years 	| 10 to 19 years | 20 to 24 years | 25 to 34 years	| 35 to 44 years | 45 to 54 years | 55 to 59 years | 60 to 64 years | 65 to 74 years | 75 years and over | All
:--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :---
**Notice Preference Definition** | | | | | | | | | | |
Email 	|28740 |	54936 |	 22701 | 88200 | 77618 | 45165 | 17336 | 15539 | 27170 | 15069 | 392474
None 	|3952 |	11921  	|2680 | 4469 | 4101 | 3154 | 1740 | 2115 | 4544 |4228 | 42904
All  | 32692 |	66857 	| 25381 	| 92669 | 81719 | 48319 | 19076 | 17654 | 31714 | 19297 | 435378

Eine Kreuztabelle mit absoluten Werten ist häufig schwer zu interpretieren, wenn die Randverteilungen ungleich verteilt sind. Deswegen sollten die Werte entweder Spaltenweise oder Zeilenweise **normalisiert** werden:

{{% customnotice code %}}
```python
pd.crosstab(
    df['Notice Preference Definition'],
    df['Age Range'],
    margins=True, normalize=1
)
```
{{% /customnotice %}}

Ergibt eine Normalisierung der Spalten, sodass sich diese jeweils zu 100% aufaddieren:

Age Range	| 0 to 9 years 	| 10 to 19 years | 20 to 24 years | 25 to 34 years	| 35 to 44 years | 45 to 54 years | 55 to 59 years | 60 to 64 years | 65 to 74 years | 75 years and over | All
:--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :---
**Notice Preference Definition** | | | | | | | | | | |
Email 	|0.879114 |	0.821694 |	 0.894409 | 0.951775 | 0.949816 | 0.934725 | 0.908786 | 0.880197 | 0.856719 | 0.780899 | 0.901456
None 	|0.120886 |	0.178306  	| 0.105591 | 0.048225 | 0.050184 | 0.065275 | 0.091214 | 0.119803 | 0.143281 | 0.219101 | 0.098544

> Von den Nutzern zwischen 0 und 9 Jahren möchten 88% (0.879114 von 1) per Mail informiert werden.

Wird das Argument `normalize=0` verwendet, so werden die Zeilen der Tabelle normalisiert. Entsprecht ändern sich die Interpretation:

Age Range	| 0 to 9 years 	| 10 to 19 years | 20 to 24 years | 25 to 34 years	| 35 to 44 years | 45 to 54 years | 55 to 59 years | 60 to 64 years | 65 to 74 years | 75 years and over 
:--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- 
**Notice Preference Definition** | | | | | | | | | | 
Email 	| 0.073228 |	0.139974 |	 0.057841 | 0.224728 | 0.197766 | 0.115078 | 0.044171 | 0.039592 | 0.069228 | 0.038395 
None 	| 0.092113 |	0.277853  	| 0.062465 | 0.104163 | 0.095585 | 0.073513 | 0.040556 | 0.049296 | 0.105911 | 0.098546 
All | 0.075089 |	0.153561 |	0.058296 |	0.212847 |	0.187697 |	0.110982 |	0.043815 |	0.040549 |	0.072842 |	0.044322

> Von den Kunden, die per Mail informiert werden möchtem befinden sich ca. 12% (0.115078 von 1) in der Altersgruppe 45 bis 54 Jahre.
