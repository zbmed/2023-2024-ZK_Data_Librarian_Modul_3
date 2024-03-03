+++
title = "seaborn"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 21
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
description = "Verbesserung und Weiterentwicklung der matplotlib Bibliothek."

+++

[seaborn](https://seaborn.pydata.org/) baut auf matplotlib auf und bietet eine Vielzahl von Funktionen, die es erlauben schnell und einfach schöne statistische Visualisierungen zu erstellen. Seaborn ist also keine komplett eigenenständige Graphik-Bibliothek, sondern nutzt intern die Funktionalitäten und Datenstrukturen von matplotlib.

Eine wichtige Funktion ist die `sns.set_theme()` Methode. Wenn sie am Anfang eines Python-Scripts ausgeführt wird, wird intern das Design der Plots erheblich verbessert. Alle plots, die nach dem Aufruf der Funktion erstellt werden, sehen viel besser aus.

Teste den Unterschied mit dem folgenden Beispiel:


{{% customnotice code%}}
```python
# import the libraries and give them some shorter names
import matplotlib.pyplot as plt
import seaborn as sns

# setup the seaborn library
sns.set_theme()

# create the same plot as in the previous example
x = range(1, 10)
plt.plot(x, x)
```
{{% /customnotice %}}

{{% customnotice tip%}}
Wenn Du im Jupyter Notebook das Code-Beispiel ausgeführst hast und danach den Aufruf `sns.set_theme()` entfernst, ändert sich das Design des Plots erstmal nicht. Für einen "Reset" musst Du den Kernel (also der im Hintergrund laufende Python Prozess) mit einem Klick auf <i class="fas fa-redo"></i> neu starten.
{{% /customnotice %}}
