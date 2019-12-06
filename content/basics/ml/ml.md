+++
title = "Machine Learning"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 2
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b>2. </b>"
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

Seit der Erfindung des Personal Computers und des Internets werden statistische Probleme immer **komplexer** und größer und die neuen **Datenmengen** erfordern neue effiziente Strukturen zum Speichern und Auffinden der Informationen.

Maschinelles Lernen ("Statistical Learning") bedeutet in diesem Kontext relevante und signifikante **Muster** und **Trends** aus den Daten zu extrahieren und die Daten "zu verstehen". Dabei spielen Computer und deren wachsende Rechenpower eine immer größere Rolle. Sie haben die klassische Statistik **revolutioniert** und es sind vor allem **Ingenieure und Informatiker**, die die Weiterentwicklung der Disziplin heutzutage vorantreiben.[^1]

Im Gegensatz zur klassischen Statistik, steht im Maschinellen Lernen auch viel stärker die **Vorhersagekraft** und **Generalisierbarkeit** von Methoden im Vordergrund und weniger ein Verständnis der kausalen Zusammenhänge.

Während die klassische Statistik oft an der Interpretation von kausalen Einflüssen einzelner Faktoren auf ein Ergebnis interessiert ist, sind Black-Box Modelle im Maschinellen Lernen viel präsenter: Ziel ist es oft, möglichst gute Prognosen, beispielsweise bei der Gesichtserkennung, zu machen. Dabei spielt letztendlich das genaue Modell und die Gewichte für die Variablen nur eine untergeordnete Rolle.

{{% customnotice tip%}}
**Teachable Machine** von Google ermöglicht das Trainieren von Machine Learning Modellen im eigenen Web-Browser ohne das Programmiercode geschrieben werden muss. Somit wird ML auch ohne Vorkenntnisse erfahrbar und man bekommt ein gutes Gespür für die Möglichkeiten und Grenzen dieser Methoden.

Experimentieren Sie zum Beispiel mit dem [*Bild-Klassifikator*](https://teachablemachine.withgoogle.com/train/image).
{{% /customnotice %}}

Maschinelles Lernen und Statistik haben viele Schnittmengen. ML kann auch als Teilgebiet der **Künstlichen Intelligenz** aufgefasst werden. KI wird definiert als: *Die Bemühung, intellektuelle Aufgaben, die normalerweise von Menschen durchgeführt werden, zu automatisieren*.[^2]

KI kann auch allein mit durch Programmierer fest eingebauten Regeln entstehen und ist damit bei klaren logischen Problemen auch sehr erfolgreich (z.B. Schachcomputer). Systeme des Maschinellen Lernens werden hingegen **trainiert**: Es werden viele Beispiele mit Eingabe- und Ausgabedaten vorgegeben und das System lernt selbstständig die "Regeln". Diese können dann auf neue Daten, von denen keine Ausgabe bekannt ist, angewandt werden, um Prognosen zu erstellen.[^2]












[^1]: [Hastie, Tibshirani, Friedman (2017): The Elements of Statistical Learning, Springer](https://web.stanford.edu/~hastie/ElemStatLearn/).

[^2]: [Francois Chollet (2018): Deep Learning with Python, Manning](https://www.manning.com/books/deep-learning-with-python).
