+++
title = "Quiz"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Quiz"
weight = 500
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b></b>"
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

{{< quiz pandas_quiz>}}
{{< item question="Ein großer Vorteil von scikit-learn ist/sind ..." answer=2 choices="die schönen Farben der Plots,ein einheitliches Interface für verschiedene Lernverfahren,die enorme Effizienze für Deep-Learning-Anwendungen" >}}
{{< item question="Je mehr Nachbarn man bei der k-Nearest-Neighbor-Methode genutzt werden, desto besser funktioniert sie, dauert aber länger." answer=3 choices="ja,nein,vielleicht" >}}
{{< item question="Zum Trainieren von Klassifikation- und Regressions-Modellen muss für jeden Datenpunkt ein Zielwert bekannst sein." answer=1 choices="ja,nein,vielleicht" >}}

{{< /quiz >}}
