+++
title = "Univariate Verteilungen"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 30
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

In der Statistik geben **Verteilungen** an, wie wahrscheinlich oder häufig eine bestimmte Merkmausausprägung oder Kombination von Merkmausausprägungen ist. Univariate Verteilung beschreiben dabei die Wahrscheinlichkeiten einer einzelnen statischen Variablen, während bivariate oder multivariate Verteilungen sich auf zwei oder mehr Variablen beziehen.

**Empirische Verteilungen** beziehen sich dabei auf die Häufigkeiten in konkreten Daten während **theoretische Verteilungen** als mathematischen Funktionen, die von einigen wenigen Parametern abhängen, vorliegen. Eine Hauptaufgabe der schließenden Statistik ist es, die beobachtbaren Daten so zu nutzen, dass die Parameter von theoretischen Verteilungen korrekt geschätzt werden können.

Statistiken, wie der Mittelwert oder der Modus dienen zur Beschreibungen und Charakterisierung von Verteilungen in einigen wenigen Kennzahlen. Dabei gibt es häufig Statistiken, die nur für bestimmte Skalenniveaus Sinn machen.


**Kategoriale** (nominale und ordinale) Variablen werden in Häufigkeitstabellen zusammengefasst. Wichtige charakteristische Eigenschaften für **metrische Variablen** sind die zentrale Lage, die Streuung und die Symmetrie.

Nach dieser Einheit sollten Sie die folgenden Fragen beantworten können:

- Wie erstelle und interpretiere ich eine (relative) Häufigkeitstabelle?
- Welche grundlegenden Statistiken kann ich mit Pandas Funktionen ausrechnen?
- Was ist der Unterschied zwischen dem Median und dem arithmetischem Mittel?
- Welche Funktionen gibt es, um die Streuung einer Variablen zu messen?
- Welche univariaten Verteilungstypen gibt es?

{{% customnotice tip %}}

Im Folgenden werden mit $x = x_1, \dots, x_n$ eine univariate Reihe von Beobachtungen beschrieben, mit $n$ die Anzahl der Beobachtungen. $x_i$ beschreibt die Beobachtung an der *i*-ten Stelle.

{{% /customnotice%}}
