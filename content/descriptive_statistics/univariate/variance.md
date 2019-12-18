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

Die Zentralität einer Verteilung ist nur eine wichtige Kennzahl. Streuungsmaße geben zusätzlich an, wie stark die Daten einer Messreihe schwanken. Die Streuung einer Variable ist entscheidend z.B. bei der Beurteilung wie Wahrscheinlich extreme Werte vorkommen können.


#### Varianz

Die Distanz einer Beobachtung vom Mittelwert der zugrundeliegenden Variable wird **Abweichung** genannt. Der Mittelwert über die quadrierten Abweichungen wird als **Varianz** definiert:

$$
s^2_x = \frac{1}{n-1}\sum_{i=1}^{n}(x_i-\bar{x})^2
$$

{{% customnotice code %}}
```python
df['Total Checkouts'].var()
```
{{% /customnotice %}}

Das Quadrieren der Abweichungen hat zur Folge, dass das Vorzeichen verschwindet und das große Abweichungen mehr Gewicht erhalten. In der Formel wird durch $n-1$ anstatt durch $n$ geteilt. Dies ist theoretisch von Bedeutung, es hat aber in der Praxis meist keine Auswirkungen, wenn durch $n$ geteilt wird.

Eine geringe Varianz bedeutet, dass sich die Werte, die die Variable annehmen kann, nur geringfügig vom Mittelwert unterscheiden.

#### Standardabweichung

Die **Standardabweichungen** ist die Wurzel der Varianz:
$$
s_x = \sqrt{s_x^2}
$$

{{% customnotice code %}}
```python
df['Total Checkouts'].std()
```
{{% /customnotice %}}


#### Variationskoeffizient

Die absolute Größe der Varianz ist abhängig von deren Mittelwert. Ein Vergleich von Standardabweichungen verschiedener Variablen ist deswegen nicht sinnvoll. Möchte man die Streuung verschiedener Variablen vergleichen, macht es Sinn, eine normalisierte Größe, den **Variationskoeffizient** zu betrachten:

$$
cv_x = \frac{s_x}{\bar{x}}
$$

{{% customnotice exercise %}}
Welche Variable streut mehr: `'Total Checkouts'` oder `'Total Renewals'`? Vergleichen Sie die Standardabweichungen und den Variationskoeffizient.
{{% /customnotice %}}


#### Spannweite

Die **Spannweite** ist die Differenz zwischen dem maximalen und minmalem Wert

{{% customnotice code %}}
```python
df['Total Checkouts'].max() - df['Total Checkouts'].min()
```
{{% /customnotice %}}

#### Interquartilsabstand

Aus den Quantilen kann der **Interquartilsabstand** als **robustes Streuungsmaß** abgeleitet werden. Er ergibt sich aus der Differenz des 75%- zum 25%-Quantil:
$$
x_{IQR} = x_{0.75} - x_{0.25}
$$

{{% customnotice code %}}
```python
df['Total Checkouts'].quantile(q=0.75) - df['Total Checkouts'].quantile(q=0.25)

```
{{% /customnotice %}}
