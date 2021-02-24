+++
title = "Klassifikation"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Klassifikation"
weight = 100
# The title of the page in menu will be prefixed by this HTML content
# pre = "<b></b>"
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

Bitte erstell ein neues Jupyter-Notebook und nennen es
`Klassifikation`.

Wir nutzen ein Datenset, das handschriftliche Ziffern in Form von 8x8
Feldern mit Werten der Farbstärkte darstellt. Eine Beschreibung des
Datensets gib es bei
[scikit-learn](https://scikit-learn.org/stable/modules/generated/sklearn.datasets.load_digits.html#sklearn.datasets.load_digits)
und im [UC Irvine Machine Learning
Repository](https://archive.ics.uci.edu/ml/datasets/Optical+Recognition+of+Handwritten+Digits). Dieses
Datenset bringt `scikit-learn` selber mit.

Wir importieren eine Funktion zu laden des Datensets und rufen dieses auf.

{{% customnotice code %}}
```python
from sklearn.datasets import load_digits
digits = load_digits()
```
{{% /customnotice %}}

Die Daten und Metadaten sind in einem sogenannten `Bunch`-Objekt organisiert

{{% customnotice code %}}
```python
type(digits)
```
{{% /customnotice %}}

Dieser Bunch hat folgende Attribute.

{{% customnotice code %}}
```python
dir(digits)
```
{{% /customnotice %}}

Schauen wir uns mal die Beschreibung an

{{% customnotice code %}}
```python
print(digits.DESCR)
```
{{% /customnotice %}}

Die eigentlichen Daten sind in einem [numpy](https://numpy.org/)-Array abgelegt.

{{% customnotice code %}}
```python
type(digits.data)
```
{{% /customnotice %}}

Schauen wir es uns mal an.

{{% customnotice code %}}
```python
digits.data
```
{{% /customnotice %}}

Schauen wir uns die Dimension der Matrix an - es handelt 
sich um eine zweidimentionsale Matrix mit 1797 Zeilen und 64 Spalten.
Es sind 1797 Bilder (also weniger als die originalen 5620) 
und 64 Features (eine lineare Darstellung der 8x8 Felder-Farbintensitätswerte) .

{{% customnotice code %}}
```python
digits.data.shape
```
{{% /customnotice %}}


Das Target-Attribute ist ebenfalls ein numpy-array ...

{{% customnotice code %}}
```python
type(digits.target)
```
{{% /customnotice %}}

... allerding mit nur einer Dimension.

{{% customnotice code %}}
```python
digits.target.shape
```
{{% /customnotice %}}

Jeder Wert entspricht der geschriebenen Nummer

{{% customnotice code %}}
```python
digits.target
```
{{% /customnotice %}}

Das Bunch-Objekt hat noch das Attribute `target_names`.
Normalerweise wird jeder Zahl in `targent` hier ein Name zugeordnen.
Da es sich aber tatsächlich um Ziffern von 0 - 9 handelt, ist das in diesem
nicht wirklich nötig.

{{% customnotice code %}}
```python
digits.target_names
```
{{% /customnotice %}}

In diesem Datenset gibt es zusätzlich noch ein Attribute `images`.
Es enthält für jede geschrieben Ziffer die Farbwerte in ein 8x8-Matrix.

{{% customnotice code %}}
```python
len(digits.images)
```
{{% /customnotice %}}

Schauen wir uns zum Beispiel das erst Bild an ...

{{% customnotice code %}}
```python

digits.images[0]
```
{{% /customnotice %}}

... oder das zehnte Bild

{{% customnotice code %}}
```python
digits.images[9]
```
{{% /customnotice %}}

Wir können die in dieser Form gespeicherten Farbintensitäten
auch mit `matplotlib` anzeigen lassen. Hier zum Beispiel für die
ersten 30 Bilder (wenn man mehr haben möchte muss man in `subplot`
mehr als 3 Zeilen angeben).

{{% customnotice code %}}
```python
import matplotlib.pyplot as plt
%matplotlib inline
fig, axes = plt.subplots(3, 10, figsize=(10, 5))
for ax, img in zip(axes.ravel(), digits.images):
    ax.imshow(img, cmap=plt.cm.gray_r)
```
{{% /customnotice %}}

Um einen Klassifikator für ein Klassifikation zu trainieren
und dann später seine Güte zu bewerten, wird das Datenset 
(genauer gesagt die Attribute `data` und `target`) in
ein Trainingsset (75%) und Testset (25%) aufgeteilt. Die Konvention
ist hier eine großes `X` für den Variablen der Datenmatrix und ein kleines `y`
für den Target-Vektor zu nutzen.

Anmerkung - bei einigen der folgenden Schritte wird 
von zufälligen Zuständen ausgegagen. Um diese
fest zu setzen und somit die Analyse reproduzierbar zu machen,
kann man den Parameter `random_state` nutzen und mit einer Zahl
versehen.

{{% customnotice code %}}
```python
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(
    digits['data'], digits['target'], random_state=1)
```
{{% /customnotice %}}

Die Maße der zweidimensionalen Trainigs-Daten-Matrix:

{{% customnotice code %}}
```python
X_train.shape
```
{{% /customnotice %}}

Die Maße der zweidimensionalen Test-Daten-Matrix:

{{% customnotice code %}}
```python
X_test.shape
```
{{% /customnotice %}}

Die Länge des Trainingsvektor entspricht der Anzahl an 
Zeilen der Trianingsmatrix.

{{% customnotice code %}}
```python
y_train.shape
```
{{% /customnotice %}}

Die Länge des Testsvektors entspricht der Anzahl an 
Zeilen der Testsmatrix.


{{% customnotice code %}}
```python
y_test.shape
```
{{% /customnotice %}}

Wir werden zuerst mit einem k-Nearest-Neighbor-Klassifizierer Arbeiten
und laden dazu die Klasse ...

{{% customnotice code %}}
```python
from sklearn.neighbors import KNeighborsClassifier
```
{{% /customnotice %}}

... und erzeugen ein Objekt davon. Hierbei können wird die Anzahl an 
zu betrachteten Nachbarn angeben:

{{% customnotice code %}}
```python
knn_clf = KNeighborsClassifier(n_neighbors=1)
```
{{% /customnotice %}}

Jetzt trainieren wir den Klassifikator mit den Trainingsdaten.
Dafür wird in `scikit-learn` unabhängig von Klassifikator die
Methode `fit` genutzt.

{{% customnotice code %}}
```python
knn_clf.fit(X_train, y_train)
```
{{% /customnotice %}}

Herzlichen Glückwunsch - wir haben unser aller erstes 
Klassifikator-Modell gebaut und trainiert. 
Jetzt kann mit diesem neue Daten (also Vektoren der Länger 64, die
die 8x8 Bilder darstellen) klassifizieren - in diesem
Fall also Vorauszusagen, welche Ziffer dargestellt wurde.

Wir haben unsere Testdaten noch verfügbar und können die Methode `predict`
des trainierten Klassifiers nutzen und erhalten die Voraussagen.

{{% customnotice code %}}
```python
knn_clf.predict(X_test)
```
{{% /customnotice %}}

Da wir für das Testset aber auch wissen welche Ziffern tatsächlich 
herauskommen sollte, können wir die Methode `score` des Klassifiers 
nutzen. Diese führt die Voraussage durch und vergleicht sie mit den 
tatsächlichen Target-Werten. Am Ende bekommen wir einen Wert zwischen 
0 (schlecht) und 1 (gut).

{{% customnotice code %}}
```python
knn_clf.score(X_test, y_test)
```
{{% /customnotice %}}

Führen sie das gleich Verfahren mit einen
k-Nearest-Neighbor-Klassifizierer selbstständig durch, der 3 Nachbar
betrachtet (Code hier nicht angezeigt).

Das schöne an `scikit-learn` ist, dass alle Klassifikatoren 
die gleichen Methoden besitzten. Sprich anderen Klassifikatoren
nutzen auch `fit`, `predict` und `score`.

Machen wir eine Klassifikation mit einem Random-Forest-Klassifikator. Lesen sie nurden nächsten Code-Block und versuchen sie die Klassfikation damit erst einmal ohne auf die beiden darauf folgenden Blöcke.

{{% customnotice code %}}
```python
from sklearn.ensemble import RandomForestClassifier
random_forest_cfl = RandomForestClassifier(random_state=1)
```
{{% /customnotice %}}


{{% customnotice code %}}
```python
random_forest_cfl.fit(X_train, y_train)
```
{{% /customnotice %}}

{{% customnotice code %}}
```python
random_forest_cfl.score(X_test, y_test)
```
{{% /customnotice %}}

Das gleiche machen wir nun für eine Klassifikation mit einem künstlichen, neuralen Netz 
(Multi-Layer-Perceptron). Standardmäßig hat das Netz ein 
eine Hidden-Layer mit 100 Nodes.

{{% customnotice code %}}
```python
from sklearn.neural_network import MLPClassifier
```
{{% /customnotice %}}

{{% customnotice code %}}
```python
mlpc = MLPClassifier(random_state=1)
mlpc.fit(X_train, y_train)
```
{{% /customnotice %}}

{{% customnotice code %}}
```python
mlpc.score(X_test, y_test)
```
{{% /customnotice %}}

Wir können die Anzahl an Hidden-Layer und Anzahl an Nodes in diesen
als Parameter setzen (hier 3 Schichten mit mit 200, 100 und 20 Nodes).
Man kann das ganze kondenensiert schreiben, indem man die
Methodenaufrufe direkt verknüpft.

{{% customnotice code %}}
```python

MLPClassifier(random_state=1, hidden_layer_sizes=(200, 100, 20)).fit(
    X_train, y_train).score(X_test, y_test)
```
{{% /customnotice %}}

Es gibt noch viele [weitere Klassifikatoren in
scikit-learn](https://scikit-learn.org/stable/auto_examples/classification/plot_classifier_comparison.html). Für einen Einführung sollten dies 3 Bespiele aber reichen.   
