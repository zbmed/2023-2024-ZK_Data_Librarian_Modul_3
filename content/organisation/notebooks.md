+++
title = "Jupyter Notebooks"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 14
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

Die Projekt-Aufgaben und Code-Beispiele in diesem Modul werden über [*Jupyter Notebooks*](https://jupyter.org/) erstellt und verteilt.

Jupyter Notebooks bieten eine **browserbasierte** graphische Schnittstelle zur Python Programmierumgebung. Deswegen können Notebooks auf jedem System gestartet werden, man benötigt dazu nur einen Web-Browser und eine lokale installierte Version von Python.

Darüber hinaus bieten Notebooks die Möglichkeit **Text, Visualisierungen und Code** in einer integrierten Datei zu erstellen. Somit können einfach statistische Reports und Analysen erstellt werden. Die **Replizierbarkeit** der Ergebnisse ist auch gewährleistet, da jede Person, die Programmierschritte im Notebook auf dem eignen Rechner wiederholen kann. 

*Jupyter Notebook* enthält einen Dateimanager mit dem Sie durch die Ordner und Dateien Ihres Systems navigieren können. Mit einem Klick auf eine Notebook-Datei öffnet sich ein neues Browser-Tab mit dem Notebook. Notebooks bestehen immer aus Text/ Markdown oder Code **Zellen** (`cells`). Der Python Code in den Zellen kann ausgeführt werden und das Ergebnis wird direkt im Notebook angezeigt.

{{% customnotice exercise%}}

1. Laden Sie [dieses Notebook](../notebooks.files/tutorial_jupyter.ipynb) herunter (Rechtsklick -> Ziel/Link speichern unter...)
2. Starten Sie *Jupyter Notebook* über die Kommandozeile oder über den *Anaconda Navigator*
3. Navigieren Sie zu dem Speicherort des Notebooks und öffnen Sie es.
4. Markieren Sie die *Code-Zelle* und führen Sie sie mit einem Klick auf den `Run` Button oder mit der Tastenkombination `Strg`+`Enter` aus
5. Versuchen Sie, die Farbe der Punkte im Plot von *Grün* auf *Rot* zu ändern
6. Fügen Sie das Datum und Ihren Namen der *Text-Zelle* hinzu
{{% /customnotice %}}


{{% customnotice tip%}}

- Notebook-Dateien erkennen Sie immer an der Dateiendung `.ipynb`. Diese Dateien können Sie in *Jupyter* mit dem integrierten Dateimanager öffnen.
- Jupyter starten Sie entweder über den *Anaconda Navigator* oder indem Sie den folgenden Befehl in Ihrer Kommandozeile ausführen (Die Kommandozeile danach nicht wieder schließen!):
```shell
jupyter notebook
```
- Rufen Sie [http://localhost:8890](http://localhost:8890/tree) in Ihrem Browser auf, um zur Oberfläche von Jupyter zu gelangen.
{{% /customnotice %}}

{{%attachments title="Jupyter Notebook" pattern=".ipynb"/%}}
