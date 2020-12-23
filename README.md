# Website for the Data-Librarian Course

This is the [hugo](https://gohugo.io/) based website for the third module "Daten analysieren und darstellen"

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

## Build

this project is based on [hugo](https://gohugo.io/) and the [hugo-learn](https://github.com/matcornic/hugo-theme-learn/) theme.

- add the [learn-theme](https://learn.netlify.com/en/basics/installation/) as a submodule to the `hugo/themes` folder
```shell
cd themes
git submodule add https://github.com/matcornic/hugo-theme-learn.git
```
- run hugo test server
```shell
hugo server
```
- build website locally
```shell
hugo
```

## Deploy

Automatic deployment to the `gh-pages` branch via [GitHub Actions For Hugo](https://github.com/peaceiris/actions-hugo/blob/master/README.md)


## Credits

This website uses a modified version of the [Learn Theme for Hugo](https://themes.gohugo.io/theme/hugo-theme-learn/en)

## License

The content of the website for this project are licensed under the [Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). The underlying source code is licensed under the MIT license.
