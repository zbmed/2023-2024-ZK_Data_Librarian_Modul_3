# pandas cheatsheet


## read in `.csv` files

```python
import pandas as pd
file_path = './Library_Usage.csv'
df = pd.read_csv(file_path)
```

## show column names and their types

```
df.columns
df.dtypes
```

## number of rows

```python
len(df)
```

## summarise functions

```
df.head()
df.tail()
df.describe()
```


## filter columns

```python
df[["colA", "colB", "colC"]]

```

## filter rows by index

```python
df.iloc[[1, 10, 15]]
```

## filter rows by logical query

```python

df.loc[df["colA"] > 100]
```

## some descriptive statistics for columns

```
df["colA"].max()
df["colA"].max()

df["colA"].mean()
df["colA"].median()

df["colA"].std()
df["colA"].var()

```


## correlation

```python
df["colA"].corr(df["colB"], method='pearson')
```

## frequency tables

```python

df["colA"].value_counts(normalize=True)
```


## cross tabulation

```python
pd.crosstab(df["colA"], df["colB"])
```

## basic plots

```python
# histogramm
df["colA"].hist()

# boxplot
df["colA"].plot.box()
df.plot.box()

# scatter plot

df.plot.scatter(x='colA', y='colB')

```

## confidence intervall

```pyth
from scipy.stats import norm, t

mean=pd['colA'].mean()
std=pd['colA'].std()
n=len(pd['colA'])

norm.interval(0.95, loc=mean, scale=std)
t.interval(0.95, n-1, loc=mean, scale=std)
```







