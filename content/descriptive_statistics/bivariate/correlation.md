+++
title = "Korrelation"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 36
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

Der Korrelationskoeffizient $\rho\_{x, y}$ misst für zwei **metrische** Variablen $x$ und $y$ die Stärke des **linearen Zusammenhangs**. Der Koeffizient kann zwischen $-1$ (negativer Zusammenhang) und $1$ (positiver Zusammenhang) variieren:


{{< figure src="../correlation.files/correlation.png" title="" width="60%" >}}


---

Der Korrelationskoeffizient ist definiert als:
$$
\rho_{x, y} = \frac{s_{x, y}^2}{s_xs_y} = \frac{\sum_{i=1}^{N}(x_i-\bar{x})(y_i-\bar{y})}{\sqrt{\sum_{i=1}^{N}(x_i-\bar{x})^2\sum_{i=1}^{N}(y_i-\bar{y})^2}}
$$

Die Ausdrücke im Nenner sind die jeweiligen [Standardabweichungen](../../univariate/variance) der Reihen. Sie dienen zur Normalisierung der Statistik, sodass diese nur Werte zwischen $-1$ und $1$ annimmt. Beachten Sie, dass in der Formel der Bruch durch $\frac{1}{N-1}$ gekürzt wurde.

Im Zähler steht die empirische **Kovarianz** definiert als:
$$
s_{x, y}^2 = \frac{1}{N-1}\sum_{i=1}^{N}(x_i-\bar{x})(y_i-\bar{y})
$$



Nehmen Sie vereinfachend an, dass $\bar{x} = \bar{y} = 0$. Die Kovarianz ist dann der Mittelwert über die paarweise miteinander multiplizierten Beobachtungen. Sind beide Faktoren positiv oder beide Faktoren negativ, so tragen diese zu einer positiven Kovarianz bei. Haben die Faktoren unterschiedliche Vorzeichen, so tragen diese zu einer negativen Kovarianz bei. Kleine numerische Werte tragen nur wenig zur Kovarianz bei.

---

Mit [pandas](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.corr.html) können Sie auch Korrelationen ausrechnen:
{{% customnotice code%}}
```python
import pandas as pd

df = pd.read_csv("../data/Library_Usage.csv")
df['Total Checkouts'].corr(df['Total Renewals'])
```
{{% /customnotice%}}


---

{{< figure src="/data-librarian/images/spurious_correlation.png"
caption="Beispiel für [Scheinkorrelation](https://de.wikipedia.org/wiki/Korrelation#Korrelation_und_Kausalzusammenhang) in Zeitreihen ($\rho_{x,y}=0.99$): Große positive oder negative Korrelationen sind kein Indiz für kausale Zusammenhänge!"
attr="Quelle: tylervigen.com" width="100%"
attrlink="https://www.tylervigen.com/spurious-correlations" >}}


{{% customnotice exercise%}}
### Anscombe-Quartett

Das Anscombe Quartett ist ein Datenstatz, der aus 4 bivariaten Verteilungen besteht. Über die Spaltennamen `['x1', 'y1'], ['x2', 'y2'], ..., ['x4', 'y4']` können die zusammengehörenden Datenpaare ausgewählt werden.

1. Lesen Sie [diesen Datensatz](../correlation.files/anscombe.csv) ein.
2. Berechnen Sie den Mittelwert, Median und die Standardabweichung der Spalten
3. Berechnen Sie jeweils die Korrelation zweier zusammenhängender Spalten `[x<i>, y<i>]`
4. Erstellen Sie jeweils ein Streudiagram zweier zusammenhängender Spalten `[x<i>, y<i>]`
5. Was fällt Ihnen auf? Informieren Sie sich über den Datensatz [hier](https://de.wikipedia.org/wiki/Anscombe-Quartett).
{{% /customnotice %}}

{{%attachments title="Related files" pattern="(.){2,}\.(csv|ipynb)" /%}}
