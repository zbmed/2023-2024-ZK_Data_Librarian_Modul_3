+++
title = "Streuungsmaße"
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

Streuungsmaße geben an, wie stark die Daten einer Messreihe schwanken.

Die Abweichung einer Beobachtung von dem Mittelwert der zugrundeliegenden Variable wird **Abweichung** genannt. Der Mittelwert über die quadrierten Abweichungen nennt man **Varianz**:

$$
s^2_x = \frac{1}{n-1}\sum_{i=1}^{n}(x_i-\bar{x})^2
$$

{{% customnotice code %}}
```python
df['Total Checkouts'].var()
```
{{% /customnotice %}}

Das Quadrieren der Abweichungen hat zur Folge, dass das Vorzeichen verschwindet und das große Abweichungen mehr Gewicht erhalten.

In der Formel wird durch $n-1$ anstatt durch $n$ geteilt. Dies ist theoretisch von Bedeutung, es hat aber in der Praxis meist keine Auswirkungen, wenn durch $n$ geteilt wird.

Die **Standardabweichungen** ist die Wurzel der Varianz:

$$
s_x = \sqrt{s_x^2}
$$

{{% customnotice code %}}
```python
df['Total Checkouts'].std()
```
{{% /customnotice %}}

Die **Spannweite** ist die Differenz zwischen dem maximalen und minmalem Wert

{{% customnotice code %}}
```python
df['Total Checkouts'].max() - df['Total Checkouts'].min()
```
{{% /customnotice %}}

### Quantile

Sie haben schon den Median $x_0.5$ als Lageparameter kennengelernt. Er teilt die geordnete Verteilung in zwei genau gleich große Teile. Allgemeiner lassen sich analog dazu die Quantile definieren: $x_{0.75}$ teil die geordnete Verteilung im Verhältnis 3:1. Das heißt, dass 75% der Beobachtungen kleiner als $x_{0.75}$ und 25% größer sind.
Das $x_{0.25}$ Quantil teilt die Reihe im Verhältnis 1:3. Hier sind 25% der Beobachtungen kleiner und 75% größer.

{{% customnotice code %}}
```python
df['Total Checkouts'].quantile(q=[0.25, 0.5, 0.75])
```
{{% /customnotice %}}

Daraus kann der **Interquartilsabstand** als Streuungsmaß abgeleitet werden:
$$
x_{IQR} = x_{0.75} - x_{0.25}
$$

{{% customnotice code %}}
```python
df['Total Checkouts'].quantile(q=0.75) - df['Total Checkouts'].quantile(q=0.25)

```
{{% /customnotice %}}
