+++
title = "Univariate Verteilungen"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 30
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

In der Statistik geben **Verteilungen** an, wie wahrscheinlich oder häufig eine bestimmte Merkmausausprägung oder eine Kombination von Merkmausausprägungen ist. Univariate Verteilung beschreiben dabei die Wahrscheinlichkeiten einer einzelnen statischen Variablen, während bivariate oder multivariate Verteilungen sich auf zwei oder mehr Variablen beziehen.

**Empirische Verteilungen** beziehen sich dabei auf die Häufigkeiten in beobachtbaren Daten während **theoretische Verteilungen** mathematische Funktionen sind, die meist von einigen wenigen Parametern abhängen.

Beispielsweise kann die [Normalverteilung](https://de.wikipedia.org/wiki/Normalverteilung) über die beiden Parameter Erwartungswert (`loc`) und Varianz (`scale`) beschrieben werden. Zufällig generierte Zahlen aus dieser Verteilung kann man beispielsweise mit `numpy` erhalten:

{{% customnotice code %}}
```
import numpy as np

np.random.normal(loc=3, scale=3, size=10)
```
{{% /customnotice %}}

---

Statistiken, wie der Mittelwert, die Varianz oder der Modus dienen zur Beschreibungen und Charakterisierung von Verteilungen mittels einiger weniger aussagekräftigen Kennzahlen. Dabei gibt es Statistiken, die oft nur auf Variablen eines bestimmten Skalenniveaus anwendbar sind.


**Kategoriale Variablen** (nominale und ordinale Variablen, [kleine Erinnerung](/data-librarian/basics/basic_terms/)) werden typischerweise in *Häufigkeitstabellen* zusammengefasst. Wichtige Kennzahlen für **metrische Variablen** sind die *zentrale Lage*, *Modalität*, *Streuung* und die *Symmetrie*. 

Nach dieser Einheit solltest Du die folgenden Fragen beantworten können:

- Wie erstelle und interpretiere ich eine (relative) Häufigkeitstabelle?
- Welche grundlegenden Statistiken kann ich mit `pandas`-Funktionen ausrechnen?
- Was ist der Unterschied zwischen dem Median und dem arithmetischem Mittel?
- Welche Funktionen gibt es, um die Streuung einer Variablen zu messen?
- Welche univariaten Verteilungstypen gibt es?

{{% customnotice tip %}}

Im Folgenden werden mit $x = x_1, \dots, x_n$ eine (univariate) Reihe von Beobachtungen beschrieben. Dabei stellt $n$ die Anzahl der Beobachtungen dar und $x_i$ beschreibt die Beobachtung an der *i*-ten Stelle.

{{% /customnotice%}}
