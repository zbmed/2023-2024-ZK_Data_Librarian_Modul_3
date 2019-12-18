+++
title = "Python Pakete und Bibliothekten"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 19
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b>1. </b>"
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

Die folgende Liste gibt einen kurzen Überblick über die wichtigsten Python Bibliotheken, von denen Sie manche im Modul näher kennenlernen werden. Im ersten Teil des Modules werden wir hauptsächlich mit `pandas` und `seaborn` arbeiten.

{{% customnotice tip%}}

#### Programming Recap

- Module, Paket, Library
    - Ein Python Skript mit der Endung `.py` wird Modul genannt.
    - Eine Sammlung von Modulen in einem Ordner, wird Paket (`package`) genannt.
    - Eine Sammlung von Paketen innerhalb eines größeren Projekts wird Bibliothek (`library`) genannt.
    - Ein `framework` ist eine große grundlegende Bibliothek, mit einem bestimmten Zweck und mit vielen Paketen, die voneinander abhängen und aufeinander aufbauen.
    - Die Begriffe werden aber nicht einheitlich benutzt und der Übergang ist oft fließend.
- Kommentare stehen immer hinter dem `#` Zeichen.
- Text steht immer in Anführungszeichen, z.B `"hallo"` oder `'hi'`.
- Mit dem `import` Befehl können externe Bibliotheken mit mehr Funktionalitäten geladen werden.
- Mit dem Zuweisungsoperator `=` können Objekte einem Variablennamen oder einem Funktionswert zugeordnet werden, z.B: `x = 1`, `text = 'hallo'`.
- Funktionen werden mit runden Klammern aufgerufen und können Funktionsargumente besitzen, z.B. `sum([1, 2, 3])`.
- Viele Funktionen sind Bestandteil von Bibliotheken und werden dann wie folgt aufgerufen: `<paketname>.<funktionsname>(<funktionsargumente>)`
{{% /customnotice %}}
