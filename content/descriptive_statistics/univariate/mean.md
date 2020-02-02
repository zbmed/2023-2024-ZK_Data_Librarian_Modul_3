+++
title = "Lagemaße"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 32
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

Für **metrische Variablen** beschreiben Lagemaße die Zentralität einer Verteilung. 

### Mittelwert

Das bekannteste Lagemaß ist der empirische **Mittelwert**:

$$
\bar{x} = \frac{1}{n}\sum_{i=1}^{n}x_i = \frac{x_1 + x_2 + \dots + x_n}{n}
$$

{{% customnotice code %}}
```python
import pandas as pd
df = pd.read_csv("../data/Library_Usage.csv")
df['Total Checkouts'].mean()
```
{{% /customnotice %}}

### Median

Eine zweite wichtige Statistik ist der **Median**. Er ergibt sich aus dem Wert der Beobachtung, die die nach der Größe geordnete Messreihe in genau zwei gleich große Teile teilt. Für eine gerade Anzahl an Beobachtung wird der Mittelwert der zwei Beobachtungen an den Stellen $n/2$ und $n/2+1$ genommen:

$$
x_{0.5} =
\begin{cases}
x_{(n+1)/2}~, \text{ n ungerade} \\\\
\frac{x_{n/2} + x_{n/2+1}}{2}~, \text{ n gerade}
\end{cases}
$$
für $x_1 < x_2 < \dots < x_n$.

Beispiel: Für $x=[8, 10, 11, 30]$ ist die Anzahl der Beobachtungen $n=4$ gerade und der Median wird berechnet mit $\frac{x_2 + x_3}{2} = \frac{10+11}{2} = 10.5$.

{{% customnotice code %}}
```python
df['Total Checkouts'].median()
```
{{% /customnotice %}}

{{% customnotice exercise %}}

#### Mittelwert und Median (20 Min)

- Schauen Sie sich den Mittelwert und den Median der Variable `Total Checkouts` an. Warum sind die beiden Werte so unterschiedlich?
- Was ziehen Sie daraus für Schlüsse für weitere statistische Analysen und Reports?
{{% /customnotice %}}

### Quantile

Sie haben schon den Median $x_{0.5}$ als Lageparameter kennengelernt. Er teilt die geordnete Verteilung in zwei genau gleich große Teile. Allgemeiner lassen sich dazu die Quantile definieren: $x_{0.75}$ teil die geordnete Verteilung im Verhältnis 3:1. Das heißt, dass 75% der Beobachtungen kleiner als $x_{0.75}$ und 25% größer sind.
Das $x_{0.25}$ Quantil teilt die Reihe im Verhältnis 1:3. Hier sind 25% der Beobachtungen kleiner und 75% größer.

{{% customnotice code %}}
```python
df['Total Checkouts'].quantile(q=[0.25, 0.5, 0.75])
```
{{% /customnotice %}}

Um Ausreißer in einer Variablen zu entfernen/ zu ersetzen, bietet es sich manchmal an, die größten (und/ oder kleinsten) $\alpha\\%$ Beobachtungen zu identifizieren: 

{{% customnotice code %}}
```python
# identifies 1% of the data at both ends of the distribution
alpha = 0.01
df['Total Checkouts'].quantile([alpha/2, 1-alpha/2])
```
{{% /customnotice %}}

{{% customnotice exercise %}}

#### Exkurs: Ausreißerentfernung I (30 Min)

- Identifzieren Sie jeweils die 1.5% größten Ausreißer in den Spalten `Total Checkouts` und `Total Renewals`.
- Wie viel Prozent der Beobachtungen sind Ausreißer in beiden Spalten?
- Erstellen Sie einen Datensatz, für den die Ausreißer entfernt sind.
- Handelt es sich hierbei um eine gute Methode, Ausreißer zu entfernen? Welche anderen Strategien kennen Sie?
{{% /customnotice %}}








