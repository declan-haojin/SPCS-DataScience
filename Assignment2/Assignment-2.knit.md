---
title: "Assignment2"
author: "Haojin Li (Declan)"
date: "2020/7/23"
output:
  pdf_document:
    toc: yes
  html_document:
    toc: yes
    df_print: paged
---


# 3.2.4 Exercises
---

## 1. Run `ggplot(data = mpg)`. What do you see?


```r
library(ggplot2)
ggplot(data = mpg)
```

![](Assignment-2_files/figure-latex/unnamed-chunk-1-1.pdf)<!-- --> 
I see nothing...

## 2. How many rows are in `mpg`? How many columns?

```r
dim(mpg)
```

```
## [1] 234  11
```

## 3. What does the `drv` variable describe? Read the help for `?mpg` to find out.


```r
?mpg()
```

```
## starting httpd help server ... done
```

```r
# `drv` is the type of drive train, where `f = front-wheel drive`, `r = rear wheel drive`, `4 = 4wd`
```


## 4. Make a scatterplot of `hwy` vs `cyl`.


```r
library(ggplot2)
ggplot(mpg, aes(hwy, cyl)) + geom_point()
```

![](Assignment-2_files/figure-latex/unnamed-chunk-4-1.pdf)<!-- --> 

```r
# plot(mpg$hwy, mpg$cyl, xlab="hwy", ylab="cyl")
```

### 5. What happens if you make a scatterplot of `class` vs `drv`? Why is the plot not useful?

```r
library(ggplot2)
ggplot(mpg, aes(class, drv)) + geom_point()
```

![](Assignment-2_files/figure-latex/unnamed-chunk-5-1.pdf)<!-- --> 

There's no correlation between `class` and `drv`.


# 3.3.1 Exercises
---

## 1

```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
```

![](Assignment-2_files/figure-latex/unnamed-chunk-6-1.pdf)<!-- --> 


## 2


```r
mpg
```

```
## # A tibble: 234 x 11
##    manufacturer model    displ  year   cyl trans   drv     cty   hwy fl    class
##    <chr>        <chr>    <dbl> <int> <int> <chr>   <chr> <int> <int> <chr> <chr>
##  1 audi         a4         1.8  1999     4 auto(l~ f        18    29 p     comp~
##  2 audi         a4         1.8  1999     4 manual~ f        21    29 p     comp~
##  3 audi         a4         2    2008     4 manual~ f        20    31 p     comp~
##  4 audi         a4         2    2008     4 auto(a~ f        21    30 p     comp~
##  5 audi         a4         2.8  1999     6 auto(l~ f        16    26 p     comp~
##  6 audi         a4         2.8  1999     6 manual~ f        18    26 p     comp~
##  7 audi         a4         3.1  2008     6 auto(a~ f        18    27 p     comp~
##  8 audi         a4 quat~   1.8  1999     4 manual~ 4        18    26 p     comp~
##  9 audi         a4 quat~   1.8  1999     4 auto(l~ 4        16    25 p     comp~
## 10 audi         a4 quat~   2    2008     4 manual~ 4        20    28 p     comp~
## # ... with 224 more rows
```


### Catagorical Variables
manufacturer
model
trans
drv
fl
class

### Continuous Variables
displ
year
cyl
cty
hwy

## 3


```r
ggplot(mpg, aes(x = displ, y = hwy, colour = cty)) +
  geom_point()
```

![](Assignment-2_files/figure-latex/unnamed-chunk-8-1.pdf)<!-- --> 



```r
ggplot(mpg, aes(x = displ, y = hwy, size = cty)) +
  geom_point()
```

![](Assignment-2_files/figure-latex/unnamed-chunk-9-1.pdf)<!-- --> 




