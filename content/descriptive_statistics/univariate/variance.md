+++
title = "Streuungsmaße"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einführung"
weight = 32
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


Die Abweichung einer Beobachtung von dem Mittelwert der zugrundeliegenden Variable wird **Abweichung** genannt. Der Mittelwert über die quadrierten Abweichungen nennt man **Varianz**:

$$
s^2 = \frac{1}{n-1}\sum_{i=1}^{n}(x_i-\bar{x})^2
$$

Das Quadrieren der Abweichungen hat zur Folge, dass das Vorzeichen verschwindet und das große Abweichungen noch größer werden: $(-10)^2 = 100$, $(-100)^2 = 10000$.

Ihnen ist vielleicht aufgefallen, dass in der Formel durch $n-1$ anstatt durch $n$ geteilt wird. Diese Auffälligkeit ist theoretisch von Bedeutung, es hat aber in der Praxis meist keine Auswirkungen, wenn wir den normalen Mittelwert bilden.

Die **Standardabweichungen** ist die Wurzel der Varianz:

$$
s = \sqrt{s^2}
$$

Für die Streuung der Variable in der Population werden $\sigma^2$ für die Varianz und $\sigma$ für die Standardabweichung eingeführt.  
