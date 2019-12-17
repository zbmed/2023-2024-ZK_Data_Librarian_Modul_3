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

Seit der Erfindung des Personal Computers und des Internets werden statistische Probleme immer **komplexer** und größer. Die **Datenmengen** erfordern neue effiziente Strukturen zum Speichern und Auffinden der Informationen.

Maschinelles Lernen (*Machine Learning* oder *Statistical Learning*) bedeutet in diesem Kontext relevante und signifikante **Muster** und **Trends** aus den Daten zu extrahieren um die Daten "zu verstehen". Dabei spielen Computer und deren wachsende Rechenpower eine immer größere Rolle. Sie haben die klassische angewandte Statistik **revolutioniert** und es sind vor allem **Ingenieure und Informatiker**, die die Weiterentwicklung der Disziplin heutzutage vorantreiben.[^1]

<<<<<<< HEAD
Im Maschinellen Lernen steht insbesondere die **Vorhersagekraft** und **Generalisierbarkeit** von statistischen Methoden und Algorithmen im Vordergrund. Ziel ist es, möglichst gute Prognosen, beispielsweise bei der Gesichtserkennung, zu machen. Die klassische Statistik dagegen ist stärker an den kausalen Zusammenhängen und der Stärke von signifikanten Einflüssen einzelner Faktoren auf ein Resultat interessiert.
=======
Im Gegensatz zur klassischen Statistik, steht im Maschinellen Lernen auch viel stärker die **Vorhersagekraft** und **Generalisierbarkeit** von Methoden im Vordergrund und weniger ein Verständnis der kausalen Zusammenhänge.

Während die klassische Statistik oft an der Interpretation von kausalen Einflüssen einzelner Faktoren auf ein Ergebnis interessiert ist, sind Black-Box Modelle im Maschinellen Lernen viel präsenter: Ziel ist es oft, möglichst gute Prognosen, beispielsweise bei der Gesichtserkennung, zu machen. Dabei spielt letztendlich das genaue Modell und die Gewichte für die Variablen nur eine untergeordnete Rolle.
>>>>>>> master

{{% customnotice tip%}}
**Teachable Machine** von Google ermöglicht das Trainieren von Machine Learning Modellen im eigenen Web-Browser ohne das Programmiercode geschrieben werden muss. Somit wird das Grundprinzip des Machinellen Lernens (hier: Supervised Learning) auch ohne Vorkenntnisse erfahrbar und man bekommt ein gutes Gespür für die Möglichkeiten und Grenzen der Methode.

Experimentieren Sie zum Beispiel mit dem [*Bild-Klassifikator*](https://teachablemachine.withgoogle.com/train/image).
{{% /customnotice %}}

Maschinelles Lernen und die angewandte Statistik besitzen große Überschneidungen und beide Gebiete bauen auf Erkenntnissen der Wahrscheinlichkeitstheorie auf. Machine Learning ist dabei auch ein Teilgebiet der **Künstlichen Intelligenz**, die als die *Automatisierung von intellektuelle Aufgaben, die normalerweise von Menschen durchgeführt werden* verstanden wird.[^2]

KI kann auch allein mit durch Programmierer fest eingebauten Regeln entstehen. Diese Regeln legen fest, wie eine Eingabe (z.B *Pixelwerte eines Bilds* oder die *Anzahl der gestrigen Sonnenstunden*) in eine Ausgabe (Wahrscheinlichkeit für ein *Katzenbild* oder *heutige Regenwahrscheinlichkeit*) transformiert wird. Damit diese Art der KI erfolgreich ist, braucht es ein großes Vorwissen und spezielle Expertise. Algorithmen des Maschinellen Lernens werden hingegen **trainiert**, d.h. sie lernen selbstständig die optimalen Regeln,die von einer Eingabe zu einer Ausgabe schließen lassen. Damit diese Transformation erfolg hat benötigt das System viele Beispiele, für die die Ausgabe bekannt ist.[^2]












[^1]: [Hastie, Tibshirani, Friedman (2017): The Elements of Statistical Learning, Springer](https://web.stanford.edu/~hastie/ElemStatLearn/).

[^2]: [Francois Chollet (2018): Deep Learning with Python, Manning](https://www.manning.com/books/deep-learning-with-python).
