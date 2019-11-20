+++
title = "matplotlib"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 62
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
description = "Bietet 2D Plotting Funktionalitäten."
+++



[matplotlib](https://matplotlib.org/) ist das Standard-Paket zum Erstellen von wissenschaftlichen 2-dimensionalen statischen Graphiken. Die grundlegende Struktur in matplotlib ist `figure`, eine leere graphische Fläche, die mit Linien, Balken, Punten, Beschriftungen und Axen befüllt werden kann. Der fertige Plot kann dann in diversen Formaten abgespeichert oder auf dem Bildschirm angezeigt werden.


{{% customnotice code%}}
```python
# import the package and give it the shorter name 'plt'
# matplotlib inline
import matplotlib.pyplot as plt

# create some dummy data
x = range(1, 10)

# make a simple scatter plot of the data
plt.plot(x, x, c="green", linestyle='', marker='+')
```
{{% /customnotice %}}

{{% customnotice exercise%}}
- Kopieren Sie den Code in ein Jupyter Notebook.
- Ändern Sie die Farbe der Pukte im Plot von grün auf schwarz.
- Ändern Sie den Aufruf so um, dass statt Punkte, Linien angezeigt werden. [Hier](https://matplotlib.org/3.1.1/api/_as_gen/matplotlib.pyplot.plot.html) finden Sie die Dokumentation der Funktion `matplotlib.pyplot.plot`.
{{% /customnotice %}}
