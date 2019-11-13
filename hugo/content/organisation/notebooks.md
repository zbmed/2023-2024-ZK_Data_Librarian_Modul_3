+++
title = "Jupyter Notebooks"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 13
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


Die meisten Aufgaben und Code-Beispiele in diesem Modul werden über [*Jupyter Notebooks*](https://jupyter.org/) verteilt. Notebooks bestehen immer aus Text oder Code Zellen (`cells`). Der Python Code in den Zellen kann ausgeführt werden und das Ergenis wird direkt im Notebook angezeigt. Somit eignen sich Notebooks, um mit Code interatkiv zu experimentieren und für andere Personen aufzubereiten. 

Notebook-Dateien erkennen Sie an der Dateiendung `.ipynb`. Diese Dateien können Sie mit *jupyter* in Ihrem Web-Broser öffnen. 

Den *jupyter* Server starten Sie indem Sie 
```shell
jupyter notebook
```
in der Kommandozeile eingeben. Alternativ können Sie auch das Progamm *Anaconda Navigator* auf Ihrem Rechner suchen und ausführen. Der *Anaconda Navigator* bietet eine graphische Oberfläche für *Anaconda*. Von dort können Sie *Jupyter Notebook* starten. 

Wenn sie das Progamm ausführen, öffnet sich automatisch Ihr Web-Browser und verweist auf die Adresse [http://localhost:8890](http://localhost:8890/tree). Dort finden Sie nun die Oberfläche von *Jupyter Notebook*. Sollte sich Ihr Browser nicht automatisch öffnen, so können Sie auch manuell [http://localhost:8890](http://localhost:8890/tree) in Ihrem Browser aufrufen. 

*Jupyter Notebook* enthält einen Datei-Explorer mit dem Sie durch die Ordner und Dateien Ihres Systems navigieren können. Mit einem Klick auf Notebook-Dateien (`.ipynb`) öffnet sich ein neues Tab mit dem Notebook.






