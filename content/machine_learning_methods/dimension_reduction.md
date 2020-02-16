+++
title = "Dimensionsreduktion"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Dimensionsreduktion"
weight = 300
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
`Dimensionsreduktion`.


Wir laden das Datenset:

{{% customnotice code %}}
```python
from sklearn.datasets import load_digits
digits = load_digits()
```
{{% /customnotice %}}

Wir wollen mit einer Pricinple Component Analysis (PCA) die
Reduktion durchführen, laden dafür die Klasse und erzeugen
eine Instanz davon. Wir geben an dass wir danach nur zwei Dimensionen
("components") erhalten würden.

{{% customnotice code %}}
```python
from sklearn.decomposition import PCA
pca = PCA(random_state=1, n_components=2)
```
{{% /customnotice %}}

Wir können die Tranformation mit der Funktion
`fit_transform` durchführen.

{{% customnotice code %}}
```python
pca_result = pca.fit_transform(digits.data)
```
{{% /customnotice %}}

Wir erhalten eine Matrix mit der gleichen Anzahl an Datenpunkte
aber nur zwei Spalten.

{{% customnotice code %}}
```python
pca_result.shape
```
{{% /customnotice %}}

Wir können nun die beiden Spalten der resultierenden Matrix 
plotten.

{{% customnotice code %}}
```python
import matplotlib.pyplot as plt
%matplotlib inline
fig, ax = plt.subplots()
plt.scatter(pca_result[:, 0], pca_result[:, 1], c=digits.target, cmap="Set1")
plt.colorbar()
```
{{% /customnotice %}}

Wir können das gleich Vorgehen mit dem t-SNE-Verfahren durchführen

{{% customnotice code %}}
```python

from sklearn.manifold import TSNE
tsne = TSNE(random_state=1, n_components=2)
tsne_result = tsne.fit_transform(digits.data)
```
{{% /customnotice %}}

Und auch hier das Ergebnis plotte. 

{{% customnotice code %}}
```python
fig, ax = plt.subplots()
plt.scatter(tsne_result[:, 0], tsne_result[:, 1], c=digits.target, cmap="Set1")
plt.colorbar()
```
{{% /customnotice %}}

Welches Verfahren zeigt eine höhere Trennschärfe?
