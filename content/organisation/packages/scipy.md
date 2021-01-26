+++
title = "scipy"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 64
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b>1. </b>"
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
description = "Funktionen und Methoden aus der Statistik."

+++

[scipy](https://docs.scipy.org/doc/scipy/reference/) ist fest mit numpy und pandas verbunden und bietet eine Menge an Funktionen und Methoden aus der Mathematik und Statistik an.

Für uns ist vor allem das Paket `scipy.stats` Interessant. Mit ihm können Zufallszahlen aus verschiedensten statistischen Verteilungen generiert werden oder auch statistische Tests durchgeführt werden. [Hier](https://docs.scipy.org/doc/scipy/reference/stats.html) findest Du einen Überblick über alle Methoden des Pakets.

Im folgenden Beispiel wird ein [Zweistichproben-t-Test](https://de.wikipedia.org/wiki/Zweistichproben-t-Test) an zwei numerischen Listen durchgeführt.


{{% customnotice code%}}
```python
# import the package stats from the library scipy
from scipy import stats

# create two numerical arrays
x = [12, 10, 11, 13, 14, 10, 13, 13, 22]
y = [1, 4, 2, 3, 5, 2, 1, 0, 0, 1, 2]

# perform a two sample t-test, to test if the samples have different means
stats.ttest_ind(x,y)
```
{{% /customnotice %}}
