+++
title = "Visualisierungen mit Seaborn"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 40
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b>3. </b>"
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

{{< youtube jbkSRLYSojo >}}

---

Im folgenden Abschnitt, wird ein Überblick über verschiedene Visualisierungsformen gegeben und anhand von **Beispielen** gezeigt, wie diese in Python mit der Bibliothek **seaborn** programmiert werden können.

Das Thema Visualisierungen ist **komplex**: Es gibt sehr viele Parameter und Stellschrauben, die man auswendig lernen oder in den Dokumentationen der Bibliotheken [pandas](https://pandas.pydata.org/pandas-docs/stable/user_guide/visualization.html), [seaborn](https://seaborn.pydata.org/tutorial.html) und [matplotlib](https://matplotlib.org/tutorials/index.html) Nachschlagen muss. Die Erstellung von eindrucksvollen und aussagekräftigen Graphiken erfordert viel Praxiserfahrung, Zeit und Mühe.

Auf der anderen Seite lassen sich schon mit wenig Programmcode annehmbare Visualisierungen erstellen. Am besten orientieren Sie sich an den zahlreiche Beispielen Online und ändern den Code Ihren Erfordernissen an. Nach dem Kapitel sollten Sie die folgenden Fragen beantworten können:

- Wie können uni- und bivariate Verteilungen in Pandas visualisiert werden?
- Wie interpretiere und erstelle ich Boxplots, Histogramme und Streudiagramme?

---

{{% customnotice tip %}}
Dieses [Cheat-Sheet](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/Python_Seaborn_Cheat_Sheet.pdf) gibt einen guten Überblick über die Erstellung von Plots mit Seaborn. 
{{% /customnotice %}}


{{% customnotice exercise %}}
#### Balkendiagramme bei FoxNews (15 Min)

- Was fällt Ihnen an den folgenden Diagrammen von FoxNews auf?
- Was würden Sie anders machen?
- Welche Botschaft wollten die "Designer" vermutlich vermitteln? Passt die Botschaft mit den Daten zusammen?
(s. auch [Quelle und Hintergründe](https://flowingdata.com/2012/08/06/fox-news-continues-charting-excellence/) oder auch [dieses Beispiel](https://flowingdata.com/2011/12/12/fox-news-still-makes-awesome-charts/))

![](https://i0.wp.com/flowingdata.com/wp-content/uploads/2014/04/Fox-News-bar-chart-1.jpeg?w=645&ssl=1)
![](https://i1.wp.com/flowingdata.com/wp-content/uploads/2012/08/Bush-cuts.png?resize=620%2C458&ssl=1)
{{% /customnotice %}}
