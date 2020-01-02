+++
title = "Tutorial"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 41
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

> Statistical analysis is a process of understanding how variables in a dataset relate to each other and how those relationships depend on other variables. Visualization can be a core component of this process because, when data are visualized properly, the human visual system can see trends and patterns that indicate a relationship. (https://seaborn.pydata.org/tutorial/relational.html)

Die zahlreichen Funktionen, die `seaborn` bietet basieren immer auf dem gleichen Prinzip: Visualisiert werden (nominale, ordinale, metrische) Variablen eines Datensatzes, die in Form eines `DataFrame`s vorliegt. Das Skalenniveau der Variablen bestimmt dabei die Art der Visualisierung. Variablen können verschiedenen Eigenschaften des Diagramms zugeordnet werden z.B. Punktgröße oder Farbe). Am besten lässt sich das Prinzip an einem Beispiel erkennen:

{{% customnotice code%}}
```python
import pandas as pd
import seaborn as sns
# command to print plots directly in jupyter
%matplotlib inline
sns.set() # sets the default seaborn theme

# use sample to generate a random subsample
df = pd.read_csv("../data/Library_Usage.csv").sample(n=1000)
sns.relplot(x='Total Checkouts', y='Total Renewals', data=df)
```
{{% /customnotice%}}

Dies erzeugt ein Streudiagram zur Visualisierung einer bivariaten Verteilung mit metrischen Variablen. Jedes Wertepaar $(x_i,y_i)$ der Verteilung wird im Koordinatensystem als Punkt dargestellt (Die Funktion `DataFrame.sample()` wird verwendet, um eine Zufalsstichprobe der Größe $n=1000$ aus dem Datenstatz zu erstellen. Dies dient zur besseren Lesbarkeit des Plots).  

Mit den zusätzlichen Argumenten `hue` (Farbe der Punkte/ Linien/ Balken ...), `size` (Größe der Punkte/ Linien/ Balken ...), `style`  können weitere Eigenschaften des Plots mit anderen Variablen des Datensatzes verlinkt werden:

{{% customnotice code%}}
```python
sns.relplot(x='Total Checkouts', y='Total Renewals', 
                hue='Provided Email Address', style='Provided Email Address', 
                size='Year Patron Registered', data=df)
```
{{% /customnotice%}}


Mit dem Argument `palette` können verschiedene [Farbpaletten](https://seaborn.pydata.org/tutorial/color_palettes.html) ausgewählt werden. Zu empfehlen sind die Paletten von [ColorBrewer](https://jiffyclub.github.io/palettable/colorbrewer/qualitative/). Sie können zwischen den Kategorien `sequential`, `diverging` oder `qualitative` wählen. Mit der Funktion `sns.choose_colorbrewer_palette(data_type)` können Sie die Farbpalette ineraktiv auswählen (dies funktioniert nur in Jupyter Notebooks):


{{% customnotice code%}}
```python
palette = sns.choose_colorbrewer_palette('qualitative')
```
{{% /customnotice%}}


Plots können mit dem `row` und/ oder `col` Argument auch anhand einer oder mehrerer Variablen in Form von Spalten und/ oder Zeilen angeordnet werden:

{{% customnotice code%}}
```python
sns.relplot(x='Total Checkouts', y='Total Renewals', 
                row='Provided Email Address', col='Outside of County', data=df)
```
{{% /customnotice%}}






















