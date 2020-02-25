+++
title = "Text-Klassifikation"
# If set, this will be used for the page's menu entry (instead of the `title` attribute)
# menuTitle = "Klassifikation"
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


# Text-Klassifikations-Beispiel

Das Beispiel basiert auf einem [offenen
Datensat](http://qwone.com/~jason/20Newsgroups/) von
[Newsgroup-Nachtrichten](https://de.wikipedia.org/wiki/Newsgroup) und
orientiert sich an [diesem offiziellen
Tutorial](https://scikit-learn.org/stable/tutorial/text_analytics/working_with_text_data.html)
von scikit-learn zur Textanalyse.

Wir nutzen Dokumente von mehreren Newsgroups und trainieren damit
einen Classifier, der dann ein Zudornung von neuen Texten auf eine
dieser Gruppen durchführen kann. Sprich die Newsgroups stellen die
Klassen/Tags dar, mit denen wir neue Texte klassifizieren.

In diesem Fall liegen die Daten noch nicht als Teil von `scikit-learn`
vor, es wird aber eine Funktion angeboten, mit die Daten bezogen werden
können.

{{% customnotice code %}}
```python
from sklearn.datasets import fetch_20newsgroups
```
{{% /customnotice %}}



Wir legen vier Newsgroups, die wir nutzen wollen, fest.

{{% customnotice code %}}
```python
selected_categories = ["sci.crypt", "sci.electronics", "sci.med", "sci.space"]
```
{{% /customnotice %}}


Wir beziehen die Trainingset- und Testsets-Dokumente.

{{% customnotice code %}}
```python
newsgroup_posts_train = fetch_20newsgroups(
    data_home="newsgroup_data",
    subset='train',
    categories=selected_categories,
    shuffle=True, random_state=1)
newsgroup_posts_test = fetch_20newsgroups(
    data_home="newsgroup_data",
    subset='test',
    categories=selected_categories,
    shuffle=True, random_state=1)
```
{{% /customnotice %}}


Die Objekte, die wir erhalten, sind `scikit-learn`-Bunches ...
{{% customnotice code %}}
```python
type(newsgroup_posts_train)
```
{{% /customnotice %}}


... und haben die üblichen Attribute von Bunches.
{{% customnotice code %}}
```python
dir(newsgroup_posts_train)
```
{{% /customnotice %}}


U.a. exitiert die übliche Beschreibung des Datensets im Attribute
`DESCR`, was wir uns ansehen können.

{{% customnotice code %}}
```python
print(newsgroup_posts_train.DESCR)
```
{{% /customnotice %}}

Das Attribut `data` enthält in diesem Fall keine Matrix, sondern
Newsgroup-Message-Texte.  Ein Beispiel schauen wir uns an:

{{% customnotice code %}}
```python
print(newsgroup_posts_train.data[6])
```
{{% /customnotice %}}


Die Targets sind die Newsgroup-Namen. Diese Klassen sind wie üblich
für `scikit-learn` als Zahlen dargestellt, die wir mittels
`target_names` auflösen können.

{{% customnotice code %}}
```python
print(newsgroup_posts_train.target_names)
```
{{% /customnotice %}}

Für unsere Beispiel-Message:
{{% customnotice code %}}
```python
newsgroup_posts_train.target_names[newsgroup_posts_train.target[6]]
```
{{% /customnotice %}}



Um die Wörter zu zählen, aber auch um Stopwörte zu entfernen und zu
Tokenisieren nutzen wir ein Objekt der
[CountVectorizer-Klasse](https://scikit-learn.org/stable/modules/generated/sklearn.feature_extraction.text.CountVectorizer.html)
bzw. dessen `fit`-Methode

{{% customnotice code %}}
```python
from sklearn.feature_extraction.text import CountVectorizer
count_vect = CountVectorizer()
count_vect.fit(newsgroup_posts_train.data)
```
{{% /customnotice %}}


Über alle Dokumente bekommen wir die folgende Zahl an Wörtern:
{{% customnotice code %}}
```python
len(count_vect.get_feature_names())
```
{{% /customnotice %}}


Wir können uns ein paar anschauen ...
{{% customnotice code %}}
```python
count_vect.get_feature_names()[10000:10050]
```
{{% /customnotice %}}


... oder sogar das counting-Dictionary mit den Wörtern und ihre
Vorkommen-Anzahl bekommen (Achtung: groß!).

{{% customnotice code %}}
```python
print(count_vect.vocabulary_)
```
{{% /customnotice %}}


Diese Countings müssen wir für den Klassifikator in eine Matrix transformieren:

{{% customnotice code %}}
```python
X_train_counts = count_vect.transform(newsgroup_posts_train.data)
```
{{% /customnotice %}}

Die Matrix, die wir erhalten, hat folgende Maße:
{{% customnotice code %}}
```python
X_train_counts.shape
```
{{% /customnotice %}}



Wir normalisieren die Wörtercoutings auf die Anzahl an Wörter im Text
(Term Frequency - TF). Dazu nutzen wir eine Objekt der Klasse
[TfidfTransformer](https://scikit-learn.org/stable/modules/generated/sklearn.feature_extraction.text.TfidfTransformer.html)
(schalten die idf-Normalisierung (Inverse Document Frequency) dabei
ab.)

{{% customnotice code %}}
```python
from sklearn.feature_extraction.text import TfidfTransformer
tf_transformer = TfidfTransformer(use_idf=False)
```
{{% /customnotice %}}

Die Normalisierung erfolgt mit den Methoden `fit` und `transform`.
{{% customnotice code %}}
```python
tf_transformer.fit(X_train_counts)
X_train_tf = tf_transformer.transform(X_train_counts)
```
{{% /customnotice %}}

Die Matrix, die wir erhalten, hat folgende Maße:
{{% customnotice code %}}
```python
X_train_tf.shape
```
{{% /customnotice %}}


Jetzt können wir einen Klassifikator erstellen. Wir Nutzen hier eine
Random-Forest-Klassifikator, könnten aber auch eine andere Methode
wählen.

{{% customnotice code %}}
```python
from sklearn.ensemble import RandomForestClassifier
tf_random_forest_classifier = RandomForestClassifier()
```
{{% /customnotice %}}

Wie bei allen Supervised-Learning-Verfahren trainieren wir den
Klassikator mit der Trainingsmatrix.

{{% customnotice code %}}
```python
tf_random_forest_classifier.fit(X_train_tf, newsgroup_posts_train.target)
```
{{% /customnotice %}}


Um zu testen wie gut der Klassifikator funktioniert, prozessieren wir
das Test-Set mit dem CountVectorizer-Objekt und führen die gleiche
TF-Transformation durch.

{{% customnotice code %}}
```python
X_test_counts = count_vect.transform(newsgroup_posts_test.data)
X_test_tf = tf_transformer.transform(X_test_counts)
```
{{% /customnotice %}}

Ein kurze Blick auf die Maße der Matrix, zeigt uns, dass die Anzahl an
Spalten (Features) gleich ist wie bei der Trainingsmatrix. 

{{% customnotice code %}}
```python
X_test_counts.shape
```
{{% /customnotice %}}

Jetzt können wir mit der `score`-Methods die Güte des Klassikators auf
dem Test-Set prüfen.

{{% customnotice code %}}
```python
tf_random_forest_classifier.score(X_test_tf, newsgroup_posts_test.target)
```
{{% /customnotice %}}


Der Klassifikator scheint gut genug zu funktionieren. Wir können jetzt
Listen von Dokumenten klassifizieren. Wir nehmen zwei Dokumete aus
unserem Test-Set und erstellen zusätzlich ein sehr kleines eigene
Dokument, das nur aus einem Satz bestehent.

{{% customnotice code %}}
```python
docs_to_classify = [
    newsgroup_posts_test.data[1],
    newsgroup_posts_test.data[7],
    "The sun send a lot of radiation to the planets including earth"]
```
{{% /customnotice %}}

Werfen wir einen kurzen Blick auf die zwei Dokumente aus dem Testset.
{{% customnotice code %}}
```python
print(newsgroup_posts_test.data[1])
```
{{% /customnotice %}}

{{% customnotice code %}}
```python
print(newsgroup_posts_test.data[7])
```
{{% /customnotice %}}


Auch diese neu zu klassifizierenden Dokumente müssen wir wie die
Traininsdokumente in Matrizen transformieren:

{{% customnotice code %}}
```python
X_to_classify_counts = count_vect.transform(docs_to_classify)
X_to_classify_tfidf = tf_transformer.transform(X_to_classify_counts)
```
{{% /customnotice %}}


Jetzt können wir mit dieser Matrix die Klassifikation durchführen ...

{{% customnotice code %}}
```python
predicted_classes = tf_random_forest_classifier.predict(X_to_classify_tfidf)
```
{{% /customnotice %}}

... und uns die Klassen anschauen, mit denen die Dokumente versehen wurden.

{{% customnotice code %}}
```python
for predicted_class in predicted_classes:
    print(newsgroup_posts_train.target_names[predicted_class])
```
{{% /customnotice %}}


Um den Klassifikator zu verbessern, probieren wird statt der
Term-Frequenz nun die TFIDF (Term Frequency times Inverse Document
Frequency) und erstellen damit unsere Matrizen.

{{% customnotice code %}}
```python
tfidf_transformer = TfidfTransformer(use_idf=True).fit(X_train_counts)
```
{{% /customnotice %}}

Machen Sie äquivalent zu oben weiter (Training, Scoring und
Prediction). Ist das Ergebnis besser? Gerne kann hier mit anderen
Klassifikator-Type anstelle von Randeom Forest experiment werden.
