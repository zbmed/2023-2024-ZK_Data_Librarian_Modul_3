+++
title = "scitkit-learn"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Einstieg"
weight = 23
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
description = "Bietet Funktionen und Methoden für maschinelles Lernen."

+++

[scikit-learn](https://scikit-learn.org/stable/) ist eine umfangreiche Bibliothek für maschinelles Lernen in Python. Es bietet eine Vielzahl an verschiedenen Algorithmen, mit denen zum Beispiel Vorhersagen oder Bilderkennung durchgeführt werden können.


{{< figure src="https://scikit-learn.org/stable/_images/sphx_glr_plot_face_recognition_001.png" title="Faces recognition example using eigenfaces and SVMs"  attr="https://scikit-learn.org/stable/auto_examples/applications/plot_face_recognition.html#sphx-glr-auto-examples-applications-plot-face-recognition-py" width="60%">}}


{{% customnotice code%}}
```python
# import the packages
import numpy as np
from sklearn.linear_model import LinearRegression

# create some dummy dependent and independent variable
X = np.array([[1, 1], [1, 2], [2, 2], [2, 3]])
y = - 1 * X[:,0] + 2 * X[:,1]

# estimate a linear regression and print out the coefficients
reg = LinearRegression().fit(X, y)
reg.coef_
```
{{% /customnotice %}}
