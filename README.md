# Data-Librarian Modul 3: Daten analysieren und darstellen
 
contains

- hugo based source code for the website in `./hugo`
- the public page in `./docs`
- additional course matrials in `./materials`

## Dates


- Modul 1: 26.11.2019 - 28.11.2019 (3 Tage Präsenz), Hacken und experimentieren mit Daten
- Modul 2: 20.01.2020 (1 Tag Präsenz),  Daten strukturieren - beschreiben - wiederauffinden (Mandy und Philipp=
- **Modul 3: 05.03.2020 (1 Tag Präsenz am 5.3.2020)**, Daten analysieren und darstellen
- Modul 4: 22.04.2020 (1 Tag Präsenz), Forschungs(daten)prozess verstehen und unterstützen
- Modul 5: 26.05.2020 (1 Tag Präsenz), Nachhaltig und verantwortungsvoll handeln im Umgang mit Daten
- Modul 6: Abschlusstag wird noch terminiert (voraussichtlich im Juli 2020), Projektmodul

Alle Präsenztermine finden in der TH Köln, Ubierring 48, 50678 Köln, Raum 211 statt. 


## Ressourcen

- https://librarycarpentry.org/
- https://www.anaconda.com/distribution/
- https://matplotlib.org/
- https://jupyter.org/
- https://automatetheboringstuff.com/
- https://librarycarpentry.org/lc-python-intro/
- [screen and video recording](https://obsproject.com/)


## Website Deployment

The website of this project is hosted on github pages and is based on [hugo](https://gohugo.io/) and the [hugo-learn](https://github.com/matcornic/hugo-theme-learn/) theme.


 
### requirements

clone the [learn-theme](https://learn.netlify.com/en/basics/installation/) into the `hugo/themes` folder

```
cd hugo/themes
git clone https://github.com/matcornic/hugo-theme-learn.git
```

### run hugo test server

```
cd hugo
hugo server
```

### build website

```
cd hugo
hugo -d ../docs
cd ..
git add docs
git commit -m "update website"
git push
```

## License

The content of the website for this project are licensed under the [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/). The underlying source code is licensed under the MIT license.

