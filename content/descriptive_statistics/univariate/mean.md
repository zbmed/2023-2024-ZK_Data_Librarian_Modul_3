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

<<<<<<< HEAD
Lagemaße beschreiben die Zentralität einer Verteilung.

Typische Lagemaße sind der empirische Mittelwert:
=======
Für **metrische Variablen** beschreiben Lagemaße die Zentralität einer Verteilung. Das bekannteste Lagemaß ist der empirische **Mittelwert**:
>>>>>>> master

$$
\bar{x} = \frac{1}{n}\sum_{i=1}^{n}x_i = \frac{x_1 + x_2 + \dots + x_n}{n}
$$

<<<<<<< HEAD

Oder der Median:

$$

$$
=======
{{% customnotice code %}}
```python
import pandas as pd
df = pd.read_csv("../data/Library_Usage.csv")
df['Total Checkouts'].mean()
```
{{% /customnotice %}}

Eine zweite wichtige Statistik ist der **Median**. Er ergibt sich aus dem Wert der Beobachtung, die die nach der Größe geordnete Messreihe in genau zwei gleich große Teile teilt. Für eine gerade Anzahl an Beobachtung wird der Mittelwert der Beobachtung an der Stelle $n/2$ und $n/2+1$ genommen:

$$
x_{0.5} =
\begin{cases}
x_{(n+1)/2}, \text{n ungerade} \\\\
\frac{x_{n/2} + x_{n/2+1}}{2}, \text{n gerade}
\end{cases}
$$
für $x_1 < x_2 < \dots < x_n$.

Beispiel: Für $x=[8, 10, 11, 30]$ ist der Median $\frac{x_2 + x_3}{2} = 10.5$.

{{% customnotice code %}}
```python
df['Total Checkouts'].median()
```
{{% /customnotice %}}

{{% customnotice exercise %}}
- Schauen Sie sich den Mittelwert und den Median der Variable `Total Checkouts` an. Warum sind die beiden Werte so unterschiedlich?
- Was ziehen Sie daraus für Schlüsse für weitere statistische Analysen und Reports?
{{% /customnotice %}}
>>>>>>> master
