# Website for the Data-Librarian Course

This is the [hugo](https://gohugo.io/) based website for the third module "Daten analysieren und verstehen"

## Add content

- to add a session put a session folder in the `./content` directory.
- the folder must contain an `_index.md` page. That is the landing page for this session.
- you can then add more markdown files that function as subpages.
- just checkout the existing folders in the `./content` directory.

## Shortcodes

This websites provides some custom shortcodes.

```markdown
{{% customnotice tip%}}
This is a tip box.
{{% /customnotice %}}
```
Instead of `tip` you can also insert `exercise, alert` or `code` boxes.

A simple [quiz](https://github.com/bonartm/hugo-quiz) is also provided:

```markdown
{{% quiz pandas_quiz%}}
{{< item question="Wie lautet der Name der Pandas Funktion, mit der Excel-Dateien eingelesen werden können?" answer=1 choices="read_excel,to_excel,load_excel,from_excel" >}}
{{< item question="Mit welchem Befehl kann die Anzahl der Zeilen aus einem DataFrame auslesen?" answer=2 choices="df.rows,len(df),df.shape[1],df.size" >}}
{{< item question="Wie viele fehlende Werte enthält die 'Age Range' Variable des Datensatzes?" answer=4 choices="40,423448,0,215" >}}
{{< item question="Was ist der Modalwert der Spalte 'Age Range'?" answer=1 choices="'25 to 34 years',91083,423233,'75 years and over'" >}}
{{% /quiz %}}
```

## Website Deployment

The website of this project is hosted on github pages and is based on [hugo](https://gohugo.io/) and the [hugo-learn](https://github.com/matcornic/hugo-theme-learn/) theme.


- clone the [learn-theme](https://learn.netlify.com/en/basics/installation/) into the `hugo/themes` folder
```shell
cd themes
git clone https://github.com/matcornic/hugo-theme-learn.git
```
- run hugo test server
```shell
hugo server
```
- build website
```shell
hugo -d ./docs
```

## Credits

This website uses a modified version of the [Learn Theme for Hugo](https://themes.gohugo.io/theme/hugo-theme-learn/en)

## License

The content of the website for this project are licensed under the [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/). The underlying source code is licensed under the MIT license.
