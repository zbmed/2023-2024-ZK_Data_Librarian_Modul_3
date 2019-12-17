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













>
