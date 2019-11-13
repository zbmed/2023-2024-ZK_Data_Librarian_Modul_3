+++
title = "Pandas"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 61
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



[pandas](https://pandas.pydata.org/) vereinfacht stark die Bearbeitung, Transformation, Aggregation und Zusammenfassung von Datensätzen sowie deren Import und Export in Python. Die zentralen Datenstrukturen in pandas sind `Series` und `DataFrame`. `Series` sind eindimensionale Listen (`array`) eines Datentypes (z.B. $[1, 3, 2, 5]$). In einem `DataFrame` werden mehrere `Series` gleicher Länge spaltenweise zu einer zweidimensionalen Tabelle, ähnlich wie einer Excel Tabelle, zusammengefasst. Ein `DataFrame` besitzt außerdem auch immer Spalten- und Zeilennamen (`index`).

```python
import pandas as pd

df = pd.DataFrame({
        'month': [1, 2, 3],
        'temperatur': [-12, 3, 9]
)}
df.describe()
```




