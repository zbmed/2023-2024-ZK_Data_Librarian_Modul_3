+++
title = "Überblick"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 61
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

Ziehen Sie eine weitere Stichprobe, so werden die neuen Schätzwerte nicht genau mit denen aus der vorherigen Stichprobe übereinstimmen. Wollen Sie deswegen eine Aussage über die tatsächlichen Anteile in der Gesamtpopulation treffen, so ist diese immer mit **Unsicherheit** behaftet.

<<<<<<< HEAD
Der Mittelwert oder der relative Anteil ändert sich mit jeder Stichprobe. Damit sind diese Schätzwerte also wieder Variablen, die bestimmten Schwankungen unterliegen und die Sie deskriptiv beschreiben können.

Wie können Sie von Mittelwerten einer Stichprobe auf den "wahren" Wert in der Gesamtpopulation schließen? Wie können Sie die Unsicherheiten, die dabei auftreten quantifizieren? Mit diesen Fragen beschäftigt sich die **Inferenzstatistik**.



Beispiel Würfel: Das würfeln eines Würfels ist ein Zufallsprozess, mit den Ereignissen $\\{1, 2, 3, 4, 5, 6\\}$. Wenn $X$ das Ergebnis eines einzelnen Würfelwurfs beschreibt dann kann die Wahrscheinlichkeit, dass der Würfelwurf Eins ergibt mit $P(X = 1)$ geschrieben werden. Ist der würfel fair und würfeln wir diesen nun viele hunderttausende Mal, so wird der relative Anteil der Einserwürfe $P(X=1) = \frac{1}{6}$ ergeben.

Wahrscheinlichkeiten nehmen immer Werte zwischen Null und Eins an und können deswegen auch als Prozente zwischen $0\%$ und $100\%$ angegeben werden.

Je mehr Beobachtungen gesammelt werden, desto genauer können Aussagen über die Wahrscheinlichkeiten von Zufallsexperimenten getroffen werden. Würfeln wir beispielsweise nur $n=10$ mal und berechnen die relative Anteile, so werden die Ergebnisse noch stark schwanken. Je öfter aber das Experiment wiederholt wird, desto näher wird der gemessene relative Anteil an den wahren Wert  $\frac{1}{6}$ sein.



## Stichprobenfehler

Der Stichprobenfehler gibt an, wie stark ein Schätzwert (*Relativer Anteil Personen mit Präferenz für Partei A*) von Stichprobe zu Stichprobe schwankt. Damit wird also die **Varianz** eines Schätzers angegeben. Die theoretische Bestimmung des Stichprobenfehlers ist eine der Hauptaufgaben der Inferenzstatistik.

Normalerweise ziehen Sie nur eine Stichprobe. Wie können Sie dann von dieser einen Stichprobe auf die Varianz des Schätzers schließen?

Der **Zentrale Grenzwertsatz** ist eine der Hauptaussagen der Inferenzstatistik. Er besagt, dass die Schätzwerte von ausreichend großen Zufallsstichproben einer **Normalverteilung** mit fest bestimmbaren Mittelwert und Varianz folgen.

Mit dem


## Bias

Dieser Begriff beschreibt eine systematische Verzerrung des Schätzwertes. Dies kann aufgrund von falschen Berechnungen des Schätzers oder häufiger, aufgrund von schlechten Stichproben passieren.

Befragen wir beispielsweise nur Personen in Großstädten nach ihren Wahlpräferenzen, so sind die daraus gewonnen Daten nur sehr schlechte Schätzwerte für die wahren Werte der Gesamtpopulation, da bestimmte Präferenzen systematisch über- oder unterschätzt werden.

=======
Der Mittelwert/ relative Anteil ändert sich mit jeder Stichprobe, die Sie ziehen. Damit sind diese Schätzwerte für sich gesehen statistische Variablen, die einer statistischen Verteilung folgen und die deskriptiv beschrieben werden können.

Wie können Sie von Mittelwerten einer Stichprobe auf den "wahren" Wert in der Gesamtpopulation schließen? Wie können Sie die Unsicherheiten, die dabei auftreten quantifizieren? Mit diesen Fragen beschäftigt sich die **Inferenzstatistik**.

Der **Stichprobenfehler** gibt an, wie stark ein Schätzwert (z.B. *Relativer Anteil Personen mit Präferenz für Partei A*) von Stichprobe zu Stichprobe schwankt. Damit wird also die **Varianz** eines Schätzers angegeben. Die theoretische Bestimmung des Stichprobenfehlers ist eine der Hauptaufgaben der Inferenzstatistik.

In der Realität ziehen Sie nur eine Stichprobe und berechnen daraus einzelne Schätzer. Wie können Sie von dieser einzelnen Stichprobe auf die Varianz des Schätzers schließen?

Der **Zentrale Grenzwertsatz** ist eine der Hauptaussagen der Inferenzstatistik. Aus ihm kann abgeleitet werden, dass der Mittelwert einer Variable aus einer ausreichend großen Stichprobe einer ganz bestimmten theoretischen Verteilung folgt. Diese Verteilung wird **Normalverteilung** genannt. Solange, die Stichprobe groß genug ist, spielt dabei die Verteilung der zugrundeliegenden Variablen keine Rolle; der Mittelwert folgt einer Normalverteilung!

Die Normalverteilung wird durch eine mathematische Funktion beschrieben. Mit ihr kann man beispielsweise berechnen: Wie wahrscheinlich ist es, dass der Mittelwert einer Stichprobe größer als $10$ ist.


{{% customnotice tip%}}

**Bias** beschreibt eine systematische Verzerrung des Schätzwertes vom wahren Wert, der geschätzt werden soll. Dies kann aufgrund von falschen Berechnungen des Schätzers oder häufiger, aufgrund von schlechten Stichproben passieren.

Werden beispielsweise nur Personen in Großstädten nach ihren Wahlpräferenzen befrat, so sind die daraus gewonnen Daten nur sehr schlechte Schätzwerte für die wahren Werte der Gesamtpopulation, da bestimmte Präferenzen systematisch über- oder unterschätzt werden.

{{% /customnotice %}}
>>>>>>> master













>
