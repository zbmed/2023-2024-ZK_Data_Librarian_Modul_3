+++
title = "Mittelwertvergleiche"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 64
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


Ein häufiges Problem bei der statistischen Datenanalyse ist die Frage, ob **signifikante Unterschiede** in den Mittelwerten zweier Subpopulationen bestehen: Leihen Frauen beispielsweise im Mittel signifikant mehr aus als männliche Bibliothekskunden? Tätigen Kunden im Ruhestand im Mittel weniger Verlängerungen als junge Kunden?

Von einem signifikanten Unterschied spricht man, wenn die Differenz zwischen den Mittelwerten zweier Stichproben so groß ist, dass es sehr Unwahrscheinlich ist, dass dieser Unterschied alleine aufgrund der rein zufälligen Schwankungen durch die Stichprobenziehung entstanden ist. 

Wenn wir mit $\mu_x$ und $\mu_y$ die wahren aber unbekannten Mittelwerte in der Population bezeichnen und mit $\Delta_{xy}$ die Differenz dieser Mittelwerte, dann lautet unsere **Hypothese**:

$$
H_0: \mu_x = \mu_y \iff \Delta_{xy} = \mu_x - \mu_y = 0
$$

Wenn diese Hypothese zutrifft, dann gibt es keine Unterschiede in den Mittelwerten der beiden Populationen. Wie lässt sich diese Hypothese nun anhand von zwei Stichproben $x = x_1, \dots, x_{n_x}$ und $y = y_1, \dots, y_{n_y}$ und deren Mittelwerten $\bar{x}$ und $\bar{y}$ statistisch überprüfen?

Wir können das bisherige **Bootstrapping-Verfahren** auch hier anwenden, um die Stichprobenverteilung von $d_{xy} = \bar{x}-\bar{y}$ zu schätzen. In jeder Simulation $s = 1, \dots, S$ erstellen wir eine Bootstrapping-Stichprobe von $x$ und $y$ und berechnen darauf die Differenz $d_{xy}$ über die Mittelwerte. 

{{% customnotice alert%}}

Beachten Sie, dass  sich das grundlegende Verfahren und die Bestimmung der Konfidenzintervalle im Vergleich zur vorherigen Lektion **nicht ändert**. Einzig der zu interessierende Schätzwert wird ausgetauscht: Wo vorher nur die Stichprobenverteilung von $\bar{x}$ bestimmt wurde, ist es nun die Verteilung von $d_{xy} = \bar{x}-\bar{y}$.

{{% /customnotice%}}

Zum Signifikanzniveau $\alpha=0.05$ erhalten wir mit den Quantilen $d_{\frac{\alpha}{2}}$ und $d_{1-\frac{\alpha}{2}}$ das 95%-Konfidenzintervall für die Mittelwertdifferenz. Mit einer Wahrscheinlichkeit von $1-\alpha = 95\\%$ überdeckt das Konfidenzintervall damit den unbekannten Populationsparameter $\Delta_{xy} = \mu_x - \mu_y$.

{{% customnotice tip%}}

Liegt das Konfidenz-Intervall für die Differenz zweier Mittelwerte ausschließlich im positiven oder negativem Bereich (also **außerhalb des Nullpunktes**), können wir daraus schließen, dass die beiden Stichproben mit hoher Evidenz unterschiedlichen Populationen mit verschiedenen Mittelwerten entstammen. Die aufgestellte Hypothese kann deswegen abgelehnt werden.

Überdeckt das KI hingegen die Null, so kann nicht ausgeschlossen werden, dass die wahre Mittelwertdifferenz Null ist. In diesem Fall können wir die Hypothese nicht ablehnen. 

{{% /customnotice%}}

{{% customnotice code%}}

```python
import pandas as pd

alpha = 0.05
S=10000

x = pd.Series([3, 3, 5, 8, 7, 3, 2, 5, 8, 1])
y = pd.Series([3, 10, 9, 8, 2, 3, 6, 7, 11, 6])

print((x.mean(), y.mean()))

dxy = []
for i in range(S):
    x_mean = x.sample(n=len(x), replace=True).mean()
    y_mean = y.sample(n=len(y), replace=True).mean()
    dxy.append(x_mean - y_mean )

pd.Series(dxy).quantile((alpha/2, 1-alpha/2))
```

{{% /customnotice %}}















