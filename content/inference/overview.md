+++
title = "Statistische Inferenz"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 1
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b>4. </b>"
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

Bisher haben Sie vorliegende Daten einer **Stichprobe** mit Visualisierungen und Statistiken beschrieben und zusammengefasst. Von Interesse sind aber in der Regel, die Zusammenhänge und Statistiken in der **Gesamtpopulation**.

Beispiel Wahlumfrage: Sie ziehen zufällig $n=100$ Personen aus dem Wahlregister und befragen Sie nach ihren Parteipräferenzen. Sie können dann beispielsweise den relativen Anteil der Personen in Ihrer Stichprobe, die eine bestimmte Partei favorisieren, bestimmen. Damit haben Sie einen **Schätzwert** für den tatsächlichen Wert, wenn Sie alle Personen des Wahlregisters befragt hätten.

Ziehen Sie eine weitere Stichprobe, so werden die neuen Schätzwerte nicht genau mit denen aus der vorherigen Stichprobe übereinstimmen. Ziehen Sie noch eine Stichprobe, so wird auch hier der Mittelwert wieder geringfügig anders sein. Wollen Sie deswegen eine Aussage über die tatsächlichen Anteile in der Gesamtpopulation treffen, so ist diese Aussage immer mit **Unsicherheit** behaftet.

Der Mittelwert/ relative Anteil ändert sich mit jeder Stichprobe, die Sie ziehen. Damit können die auf einer Stichprobe berechneten Schätzerte als statistische Variablen betrachtet werden. Wie für andere Variablen auch, kann diese **Stichprobenverteilung** deskriptiv beschrieben werden.

In der Realität wird aber in der Regel nur eine einzige Stichprobe der Größe $n$ gezogen. Wie können Sie von Mittelwerten einer einzelnen Stichprobe auf den "wahren" zugrundeliegenden Wert in der Gesamtpopulation schließen? Wie können Sie die Unsicherheiten, die dabei auftreten quantifizieren? Mit diesen Fragen beschäftigt sich die **Inferenzstatistik!**


{{< youtube QU8OLpSfzB8 >}}


{{% customnotice tip%}}

Der **Stichprobenfehler** gibt an, wie stark ein Schätzwert (z.B. *Relativer Anteil Personen mit Präferenz für Partei A*) von Stichprobe zu Stichprobe schwankt. Damit wird also die **Varianz** eines Schätzers angegeben. Für viele Statistiken, wie das arithmetische Mittel, kann dessen Verteilung theoretisch hergeleitet werden. 

Besitzt beispielsweise die Stichprobenverteilung für den Mittelwert eine hohe Varianz (d.h. mit jeder weiteren Stichprobe würden die berechneten Mittelwerte stark schwanken), dann lässt sich der tatsächliche Mittelwert in der Population nur schlecht eingrenzen. In der Regeln verringert sich die Varianz eines Schätzers je größer die Stichprobe ist. 


{{% /customnotice %}}















>
