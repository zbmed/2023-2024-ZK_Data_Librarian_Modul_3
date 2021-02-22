+++
title = "Konfidenzintervalle und Signifikanz"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 63
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

![](../significance.files/inference.png)


Im vorherigen Beispiel hast Du mit Hilfe des Bootstrapping-Verfahrens die Stichprobenverteilung geschätzt. Wenn die Stichprobenverteilung bekannt ist, können damit Aussagen über den tatsächlichen Parameter in der Population (im Bild mit $\mu$ bezeichnet) getroffen werden. 

Eine häufig angewandte Methode sind **Konfidenzintervalle** (KI). Man gibt einen Bereich aus der Stichprobenverteilung des Schätzwertes an, der den wahren Wert in der Population mit hoher Wahrscheinlichkeit überdeckt. Die Wahrscheinlichkeit wird mit $1-\alpha$ angegeben. Der Wert $\alpha$ wird **Signifikanzniveau** genannt und vor der Bestimmung des Intervalls festgelegt. Üblicherweise wird $\alpha=0.10$, $\alpha=0.05$, oder $\alpha=0.01$ gesetzt. 

Ein breites Konfidenzintervall zeigt auf, dass die Schätzwerte stark schwanken und dass der wahre Populationsparameter deswegen nur sehr ungenau bestimmt werden kann. Mit größerer Stichprobengröße verkleinert sich in der Regel der Stichprobenfehler und damit auch das Intervall: Es können **präzisere Aussagen** über die Population getroffen werden.

Mit einem niedrigeren Signifikanzniveau $\alpha$ kann sichergestellt werden, dass das KI den wahren Wert mit höherer Wahrscheinlichkeit überdeckt. Diese **geringere Fehlertoleranz** hat jedoch ein breiteres und damit weniger präzises Intervall zur Folge. 

Das Konfidenzintervall kann aus der mit dem Bootstraping-Verfahren angenäherten Stichprobenverteilung geschätzt werden: Es entspricht genau den entsprechenden Quantilen der geschätzten Stichprobenverteilung: Soll beispielsweise ein 90%-KI zum Signifikanzniveau von $\alpha=0.10$ erstellt werden, so lässt sich die untere Grenze aus der Verteilung als $\bar{x}_\frac{\alpha}{2} = \bar{x}\_{0.05}$ ablesen. Die obere Grenze als $\bar{x}\_{1-\frac{\alpha}{2}} = \bar{x}\_{0.95}$. Somit ist sichergestellt, dass 90% aller mit dem Bootstrapping Verfahren ermittelter Stichprobenmittelwerte innerhalb dieses Intervalls liegen. Damit überdeckt das KI mit 90% Wahrscheinlichkeit den wahren Populationsparameter $\mu$.

Mit dem Bootstrapping Verfahren kann man nicht nur Konfidenzintervalle für den Mittelwert angeben, sondern auch für viele weitere Statistiken, wie den Median oder den Korrelationskoeffizienten zwischen zwei Variablen. 

{{% customnotice tip%}}

#### Beispiel (Fortsetzung)

Die Stichprobenmittelwerte aus der Bootstraping-Simulation werden zuerst in eine `Series` umgewandelt. Mit der Funktion `quantile` können die Quantile der Stichprobenverteilung bestimmt werden. Sie entsprechen dem geschätzten Konfidenzintervall zum Signifikanzniveau $\alpha$. 

```python
x_means = pd.Series(x_means)
alpha = 0.10
x_means.quantile((alpha/2,1-alpha/2))
```
{{% /customnotice %}}


{{% customnotice exercise%}}

#### 4.2 Signifikanzniveau 

Berechne ein 90%-Konfidenzintervall jeweils für den Mittelwert und den Median der Variablen `Total Renewals` und `Total Checkouts`.

{{% /customnotice %}}







