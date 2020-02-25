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
{{< item question="Welche Texteigenschaften waren in unserem Beispiel Grundlage für die Klassifikation?" answer=3 choices="Die Reihenfolge der Wörter im Text,Die Häufigkeite von Wortpaaren im Text, Die Häufigkeit einzelner Wörter im Text" >}}
{{< item question="Wir wurde in unserem Beispeil dafür gesorgt, dass die Matrizen des Traningsets und des Testsets sowie der zu klassifizierenden Dokumente die gleichen Features enthielten?" answer=2 choices="Indem der gleiche Klassifikator genutzt wurde, Indem das gleiche CountVectorizer-Objekt für die Transformation genutzt wurde,Indem die Matrizen durch shape zugeschnitten wurden" >}}
{{< /quiz >}}
