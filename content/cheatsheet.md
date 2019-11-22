+++
title = "Cheat Sheet"
weight = 1
pre = ""
# The title of the page in menu will be postfixed by this HTML content
post = ""
# Set the page as a chapter, changing the way it's displayed
chapter = false
# Hide a menu entry by setting this to true
hidden = true
+++

### Other Resources

- https://librarycarpentry.org/
- https://automatetheboringstuff.com/
- https://librarycarpentry.org/lc-python-intro/


### read in `.csv` files

```python
import pandas as pd
file_path = './Library_Usage.csv'
df = pd.read_csv(file_path)
```

### show column names and their types

```
df.columns
df.dtypes
```

### number of rows

```python
len(df)
```

### summarize functions

```
df.head()
df.tail()
df.describe()
```

### filter on columns

```python
df[["colA", "colB", "colC"]]

```

### filter on rows by index

```python
df.iloc[[1, 10, 15]]
```

### filter on rows by logical query

```python
df.loc[df["colA"] > 100]
```

### some descriptive statistics for columns

```
df["colA"].max()
df["colA"].max()

df["colA"].mean()
df["colA"].median()

df["colA"].std()
df["colA"].var()

```


### correlation

```python
df["colA"].corr(df["colB"], method='pearson')
```

### frequency tables

```python

df["colA"].value_counts(normalize=True)
```


### cross tabulation

```python
pd.crosstab(df["colA"], df["colB"])
```

### basic plots

```python
# histogramm
df["colA"].hist()

# boxplot
df["colA"].plot.box()
df.plot.box()

# scatter plot
df.plot.scatter(x='colA', y='colB')
```

## t-test

```python

```
