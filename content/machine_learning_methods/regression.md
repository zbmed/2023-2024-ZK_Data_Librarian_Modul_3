+++
title = "Regression"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Regression"
weight = 200
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

Bitte erstellen Sie ein neues Jupyter-Notebook und nennen es
`Regression`.

Hier führen wir eine einfache Regression von zwei Features (also in
zwei Dimensionen durch), da dies sich leichter visualisieren
lässt. Tatsächlich ist man aber in der Anzahl an Features nicht
eingeschränkt. Ziel ist es ein Regression-Model zu erstellen, in dem
man einen numerischen Eingabe-Wert (x) eingibt und einen numerischen
Ausgabe-Wert (y) erhält.

Wir erzeugen und ein künstlichen Datenset von 500 Datenpunkten
mit Hilfe der Funktion `make_regression`. Mit dem Parameter 
`noise` können wir angeben, wie verauscht die Daten sein sollen.

{{% customnotice code %}}
```python
from sklearn.datasets import make_regression
X_reg, y_reg = make_regression(n_samples=500, n_features=1, noise=20, random_state=1)
```
{{% /customnotice %}}

Kurzer Blick auf die Daten:

{{% customnotice code %}}
```python
X_reg
```
{{% /customnotice %}}

und die Dimensionen der Matrix:

{{% customnotice code %}}
```python
X_reg.shape
```
{{% /customnotice %}}

und Länge des Ziel-Vektors:

{{% customnotice code %}}
```python
y_reg.shape
```
{{% /customnotice %}}

Wir können die Daten zweidimensional plotten.
Die x-Achse stellt die Eingangswerte dar, die y-Achse
die davon abhängigen Werte. Mit `X_reg[:, 0]` wird die 
erste und einzige Spalte, der prinzipiel
n-dimensionalen Input-Werte-Matrix genutzt.

{{% customnotice code %}}
```python
import matplotlib.pyplot as plt
%matplotlib inline
plt.plot(X_reg[:, 0], y_reg, ".")
```
{{% /customnotice %}}


Wir möchten für diese Daten eine lineares Regression-Modell erstellen,
laden dafür die nötige Klasse und erstellen eine Instanz davon. 
Noch einmal zur Erinnerung - ein lineare Modell wir durch folgende Formel beschrieben:

y = w_1 * x_1 + w_2 * x_2 + ... + w_n * x_n + b

Beim Fitten werden die w-Parameter und der b-Parameter mit Werten versehen.

{{% customnotice code %}}
```python
from sklearn.linear_model import LinearRegression
linear_regression = LinearRegression()
```
{{% /customnotice %}}

Wir teilen unsere Daten für eine spätere Bewertung der Güte in ein 
Trainings- und ein Testset auf.

{{% customnotice code %}}
```python
X_reg_train, X_reg_test, y_reg_train, y_reg_test = train_test_split(X_reg, y_reg)
```
{{% /customnotice %}}

Das Fitting der Parameter erfolg mit der Methode `fit`.

{{% customnotice code %}}
```python
linear_regression.fit(X_reg_train, y_reg_train)
```
{{% /customnotice %}}

Wir können uns jetzt die Koeffizienten also in diesem nut Fall w_1 anschauen. 
Die Gerade hat also die Steigung 21.4.

{{% customnotice code %}}
```python
linear_regression.coef_
```
{{% /customnotice %}}

Zudem gibt es noch den y-Achsen-Abschnit bei 0 (Intercept).

{{% customnotice code %}}
```python
linear_regression.intercept_
```
{{% /customnotice %}}

Wir können nun die Trainingsdaten und die Gerade, die
das lineare Modell repräsentiert, in einem Plot darstellen.

{{% customnotice code %}}
```python
plt.plot(X_reg_train, y_reg_train, ".")
y_lm_predicted = linear_regression.predict(X_reg_train)
plt.plot(X_reg_train, y_lm_predicted, ".")
```
{{% /customnotice %}}

Dieses trainierte Modell kann nun auf neue Werte angewandt werden. 
Zum Beipiel unserer Test-Datenset:

{{% customnotice code %}}
```python
linear_regression.predict(X_reg_test)
```
{{% /customnotice %}}


Für das Testdatenset kennen wir die tatsächlichen y-Werte und
können mit der Methode `score` eine Vorraussage durchführen und
diese mit den Werten vergleichen um die Güte der Voraussage zu bewerten.

{{% customnotice code %}}
```python
linear_regression.score(X_reg_test, y_reg_test)
```
{{% /customnotice %}}

Das gleiche Vorgehene können wir nun mit anderen Regression-Methoden
nutzen. Zum Beispiel mit der SVM-Methode

{{% customnotice code %}}
```python
from sklearn.svm import SVR
svm_regression = SVR()
svm_regression.fit(X_reg_train, y_reg_train)
svm_regression.score(X_reg_test, y_reg_test)
```
{{% /customnotice %}}

Auch hier gibt es wieder viele weitere Regressionsmethoden, wir
belassen es aber bei diesen Beispielen.
