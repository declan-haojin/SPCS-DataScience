### vectors, data, matrices, subsetting
x = c(2,7,5)
x
### output: [1] 2 7 5
y=seq(from=4,length=3,by=3)
?seq
y
### output: [1]  4  7 10
t <- x+y
x/y
### output: [1] 0.5 1.0 0.5
x^y
### output: [1]      16  823543 9765625
x[2]
### output: [1] 7
x[2:3]
### output: [1] 7 5
x[-2]
### output: [1] 2 5
x[-c(1,2)]
### output: [1] 5
z=matrix(seq(1,12),4,3)
z
### output:
#[,1] [,2] [,3]
#[1,]    1    5    9
#[2,]    2    6   10
#[3,]    3    7   11
#[4,]    4    8   12
z[3:4,2:3]
### output:
#[,1] [,2]
#[1,]    7   11
#[2,]    8   12
z[,2:3]
### output:
#[,1] [,2]
#[1,]    5    9
#[2,]    6   10
#[3,]    7   11
#[4,]    8   12
z[,1]
### [1] 1 2 3 4
z[,1,drop=FALSE]
#[,1]
#[1,]    1
#[2,]    2
#[3,]    3
#[4,]    4
dim(z)
# [1] 4 3
ls()
# [1] "Auto" "t"    "x"    "y"    "z"
rm(y)
ls()
# "Auto" "t"    "x"    "z" 
### Generating random data, graphics
x = runif(50)
y = rnorm(50)
plot(x,y)
plot(x,y,xlab="Random Uniform",ylab="Random Normal",pch="*",col="blue")
par(mfrow=c(2,1))
plot(x,y)
hist(y)
par(mfrow=c(1,1))
### Reading in data
Auto=read.csv("Auto.csv")
names(Auto)
#[1] "mpg"          "cylinders"    "displacement" "horsepower"   "weight"      
#[6] "acceleration" "year"         "origin"       "name"   
dim(Auto)
# [1] 397   9
class(Auto)
# [1] "data.frame"
summary(Auto)
#mpg          cylinders      displacement    horsepower            weight    
#Min.   : 9.00   Min.   :3.000   Min.   : 68.0   Length:397         Min.   :1613  
#1st Qu.:17.50   1st Qu.:4.000   1st Qu.:104.0   Class :character   1st Qu.:2223  
#Median :23.00   Median :4.000   Median :146.0   Mode  :character   Median :2800  
#Mean   :23.52   Mean   :5.458   Mean   :193.5                      Mean   :2970  
#3rd Qu.:29.00   3rd Qu.:8.000   3rd Qu.:262.0                      3rd Qu.:3609  
#Max.   :46.60   Max.   :8.000   Max.   :455.0                      Max.   :5140  
#acceleration        year           origin          name          
#Min.   : 8.00   Min.   :70.00   Min.   :1.000   Length:397        
#1st Qu.:13.80   1st Qu.:73.00   1st Qu.:1.000   Class :character  
#Median :15.50   Median :76.00   Median :1.000   Mode  :character  
#Mean   :15.56   Mean   :75.99   Mean   :1.574                     
#3rd Qu.:17.10   3rd Qu.:79.00   3rd Qu.:2.000                     
#Max.   :24.80   Max.   :82.00   Max.   :3.000                     
plot(Auto$cylinders,Auto$mpg)
attach(Auto)
search()
#[1] ".GlobalEnv"        "Auto"              "tools:rstudio"     "package:stats"    
#[5] "package:graphics"  "package:grDevices" "package:utils"     "package:datasets" 
#[9] "package:methods"   "Autoloads"         "package:base"  
plot(cylinders,mpg)
cylinders=as.factor(cylinders)
plot(cylinders,mpg,xlab="Cylinders",ylab="Mpg",col="red")
# pdf(file="../mpg.pdf")
# plot(cylinders,mpg,xlab="Cylinders",ylab="Mpg",col="red")
# dev.off()
horsepower <- as.numeric(horsepower)
pairs(Auto) # Error with non numeric columns
pairs(Auto[,-c(4,9)])
pairs(mpg~cylinders+acceleration+weight,Auto)

### Adding Library packages
# DO this once to install a package, 
# or follow the menus in RStudio Tools > Install Package
# install.packages("MASS")
library(MASS)
data(Boston)
View(Boston)
### Quit R Studio 
# q()