+++
title = "Ein- und Ausgabe"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 2
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

Die Ein- und Ausgabe von Daten in `pandas` ist umfangreich und einfach. Aber was bedeutet *einlesen* eigentlich?

Die Festplatte des Computers dient zur Langzeitspeicherung von Dateien, wie beispielsweise Fotos, Excel-Listen oder textbasierte `.csv` Dateien. Auch wenn der Strom weg ist, bleiben die Dateien auf der Festplatte erhalten.

Diese Speicherfähigkeit hat jedoch auch ihren Preis: Die Zugriffszeiten, d.h. die Zeit die die Festplatte benötigt um beispielsweise die 10. Zeile einer Textdatei zu lesen und die Werte an den Prozessor zu übergeben, sind vergleichsweise hoch.

Deswegen gibt es neben dem Festplattenspeicher auch noch den Arbeitsspeicher (RAM). Dessen Zugriffszeiten sind wesentlich schneller, die Daten sind jedoch hier nicht persistent. Wenn Sie eine Excel-Liste mit einem Tabellenkalkulationsprogramm öffnen, dann werden die Daten von der Festplatte in den Arbeitsspeicher geladen. Deswegen können Sie danach so schnelle Berechnungen durchführen und die Daten filtern. Das gleiche passiert, wenn Sie Daten in Python mit dem `pandas` Paket einlesen.

Um eine `.csv` Datei einzulesen und in einer Variable zu speichern verwenden Sie die Funktion `read_csv`:

{{% customnotice code %}}
```python
import pandas as pd
df = pd.read_csv("../data/Library_Usage.csv")
df.head()
```
{{% /customnotice %}}

Um Sie beispielsweise als Excel-Tabelle zu speicher
verwenden Sie die Funktion `to_excel`:

{{% customnotice code %}}
```python
import pandas as pd
df = pd.read_csv("../data/Library_Usage.csv")
# we just write down the first few lines as it takes so long to save as excel
df.head().to_excel("../data/Library_Usage.xlsx")
```
{{% /customnotice %}}

{{% customnotice alert %}}
- Wenn Sie Daten einlesen verwenden Sie immer eine Funktion die unter der `pandas` Bibliothek abgelegt ist: `pd.read_csv`, `pd.read_json`, ...

- Wenn Sie Daten schreiben, dann verwenden Sie die Funktion die der `DataFrame`-Variable zugeordnet ist:
`df.to_csv`, `df.to_json`, ...

{{% /customnotice %}}


{{% customnotice exercise %}}

### Datenrundreise

- Informieren Sie sich [hier](https://pandas.pydata.org/pandas-docs/stable/reference/io.html) über die verschiedenen Funktionen zur Ein- und Ausgabe.
- Lesen Sie den Datensatz ein und speichern sie ihn als `.json` ab.
- Lesen Sie die `.json` ein und speichern Sie den Datensatz als `.xlsx` ab.
- Lesen Sie dann die `.xlsx` Datei ein und speichern sie den Datensatz als `.csv` Datei ab. Achten Sie darauf, den ursprünglichen originalen Datensatz nicht zu überschreiben.
- Vergleichen Sie die originale `.csv` Version mit der Version, nach der Datenrundreise. Ist alles gleich geblieben?
{{% /customnotice %}}
