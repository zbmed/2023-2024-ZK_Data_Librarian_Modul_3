+++
title = "San Francisco Library Usage"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 15
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

Im ersten Teil des Moduls werden Sie einen  [offenen Kundendatensatz](https://data.sfgov.org/Culture-and-Recreation/Library-Usage/qzz6-2jup) der Bibliothek in San Francisco analysieren.

> The Integrated Library System (ILS) is composed of bibliographic records including inventoried items, and patron records including circulation data. The data is used in the daily operation of the library, including circulation, online public catalog, cataloging, acquisitions, collection development, processing, and serials control. This dataset represents the usage of inventoried items by patrons ... (*Abstract taken from [here](https://data.sfgov.org/Culture-and-Recreation/Library-Usage/qzz6-2jup)*)








{{% customnotice exercise%}}
#### Anlegen eines Projektordners (15 Min)
1. Besuchen Sie das [offene Daten-Portal](https://data.sfgov.org/Culture-and-Recreation/Library-Usage/qzz6-2jup) der Stadt San Francisco und informieren Sie sich über den Datensatz
2. Erstellen Sie einen Ordner auf Ihrem Computer. Dieser Ordner wird Ihr **Projektordner** für dieses Modul. Dort legen Sie alle Datensätze und Jupyter Notebooks ab.
3. Erstellen Sie einen Unterordner `./data/` und einen Unterordner `./notebooks/` innerhalb Ihres Projektordners.
4. Laden Sie den Datensatz [Library_Usage.csv](https://data.sfgov.org/api/views/qzz6-2jup/rows.csv?accessType=DOWNLOAD) aus dem Internet herunter und speichern Sie ihn im Projektordner im Unter-Ordner `./data/` ab.
5. Stellen Sie sicher, dass Ihr Projektordner die folgende Verzeichnisstruktur aufweist:
```shell
Module_3
├── data
│   └── Library_Usage.csv
├── notebooks
│   └── tutorial_jupyter.ipynb
```
{{% /customnotice %}}

{{% customnotice tip%}}
In [dieser Excel Tabelle](https://data.sfgov.org/api/views/qzz6-2jup/files/72c2070f-7b56-4d14-840a-d1a70f5d0f19?download=true&filename=LIB-0003_DataDictionary_library-usage.xlsx) finden Sie eine detallierte Erklärung der einzelnen Variablen des Datensatzes.
{{% /customnotice %}}






{{< figure src="https://live.staticflickr.com/1231/1271759045_d5f8046d93_b.jpg"
attr="*[books](https://www.flickr.com/photos/34111548@N00/1271759045) by [1 brian](https://www.flickr.com/photos/34111548@N00) is licesed under [CC BY-NC-SA 2.0](https://creativecommons.org/licenses/by-nc-sa/2.0/?ref=ccsearch&atype=html)*" >}}
