+++
title = "seaborn"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 63
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
+++ 


[seaborn](https://seaborn.pydata.org/) baut auf matplotlib auf und bietet eine Vielzahl von Funktionen, die es erlauben schnell und einfach schöne statistische Visualisierungen zu erstellen. 

```python
import matplotlib.pyplot as plt
import seaborn as sns

sns.set()
x = range(1, 10)
plt.plot(x, x, label='quadratic')





