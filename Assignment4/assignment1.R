# 8
college = read.csv("College.csv")
fix(college)
rownames (college)=college[,1]
fix(college)
college = college[,-1]
fix(college)
summary(college)
#Private               Apps           Accept          Enroll       Top10perc    
#Length:777         Min.   :   81   Min.   :   72   Min.   :  35   Min.   : 1.00  
#Class :character   1st Qu.:  776   1st Qu.:  604   1st Qu.: 242   1st Qu.:15.00  
#Mode  :character   Median : 1558   Median : 1110   Median : 434   Median :23.00  
#Mean   : 3002   Mean   : 2019   Mean   : 780   Mean   :27.56  
#3rd Qu.: 3624   3rd Qu.: 2424   3rd Qu.: 902   3rd Qu.:35.00  
#Max.   :48094   Max.   :26330   Max.   :6392   Max.   :96.00  
#Top25perc      F.Undergrad     P.Undergrad         Outstate       Room.Board  
#Min.   :  9.0   Min.   :  139   Min.   :    1.0   Min.   : 2340   Min.   :1780  
#1st Qu.: 41.0   1st Qu.:  992   1st Qu.:   95.0   1st Qu.: 7320   1st Qu.:3597  
#Median : 54.0   Median : 1707   Median :  353.0   Median : 9990   Median :4200  
#Mean   : 55.8   Mean   : 3700   Mean   :  855.3   Mean   :10441   Mean   :4358  
#3rd Qu.: 69.0   3rd Qu.: 4005   3rd Qu.:  967.0   3rd Qu.:12925   3rd Qu.:5050  
#Max.   :100.0   Max.   :31643   Max.   :21836.0   Max.   :21700   Max.   :8124  
#Books           Personal         PhD            Terminal       S.F.Ratio    
#Min.   :  96.0   Min.   : 250   Min.   :  8.00   Min.   : 24.0   Min.   : 2.50  
#1st Qu.: 470.0   1st Qu.: 850   1st Qu.: 62.00   1st Qu.: 71.0   1st Qu.:11.50  
#Median : 500.0   Median :1200   Median : 75.00   Median : 82.0   Median :13.60  
#Mean   : 549.4   Mean   :1341   Mean   : 72.66   Mean   : 79.7   Mean   :14.09  
#3rd Qu.: 600.0   3rd Qu.:1700   3rd Qu.: 85.00   3rd Qu.: 92.0   3rd Qu.:16.50  
#Max.   :2340.0   Max.   :6800   Max.   :103.00   Max.   :100.0   Max.   :39.80  
#perc.alumni        Expend        Grad.Rate     
#Min.   : 0.00   Min.   : 3186   Min.   : 10.00  
#1st Qu.:13.00   1st Qu.: 6751   1st Qu.: 53.00  
#Median :21.00   Median : 8377   Median : 65.00  
#Mean   :22.74   Mean   : 9660   Mean   : 65.46  
#3rd Qu.:31.00   3rd Qu.:10830   3rd Qu.: 78.00  
#Max.   :64.00   Max.   :56233   Max.   :118.00  
#college[1]
college = college[,-1]
pairs(college[,1:10])
Elite = rep("No",nrow(college))
Elite[college$Top10perc>50]="Yes"
Elite=as.factor(Elite)
college=data.frame(college, Elite)
summary(college)
#Apps           Accept          Enroll       Top10perc       Top25perc    
#Min.   :   81   Min.   :   72   Min.   :  35   Min.   : 1.00   Min.   :  9.0  
#1st Qu.:  776   1st Qu.:  604   1st Qu.: 242   1st Qu.:15.00   1st Qu.: 41.0  
#Median : 1558   Median : 1110   Median : 434   Median :23.00   Median : 54.0  
#Mean   : 3002   Mean   : 2019   Mean   : 780   Mean   :27.56   Mean   : 55.8  
#3rd Qu.: 3624   3rd Qu.: 2424   3rd Qu.: 902   3rd Qu.:35.00   3rd Qu.: 69.0  
#Max.   :48094   Max.   :26330   Max.   :6392   Max.   :96.00   Max.   :100.0  
#F.Undergrad     P.Undergrad         Outstate       Room.Board       Books       
#Min.   :  139   Min.   :    1.0   Min.   : 2340   Min.   :1780   Min.   :  96.0  
#1st Qu.:  992   1st Qu.:   95.0   1st Qu.: 7320   1st Qu.:3597   1st Qu.: 470.0  
#Median : 1707   Median :  353.0   Median : 9990   Median :4200   Median : 500.0  
#Mean   : 3700   Mean   :  855.3   Mean   :10441   Mean   :4358   Mean   : 549.4  
#3rd Qu.: 4005   3rd Qu.:  967.0   3rd Qu.:12925   3rd Qu.:5050   3rd Qu.: 600.0  
#Max.   :31643   Max.   :21836.0   Max.   :21700   Max.   :8124   Max.   :2340.0  
#Personal         PhD            Terminal       S.F.Ratio      perc.alumni   
#Min.   : 250   Min.   :  8.00   Min.   : 24.0   Min.   : 2.50   Min.   : 0.00  
#1st Qu.: 850   1st Qu.: 62.00   1st Qu.: 71.0   1st Qu.:11.50   1st Qu.:13.00  
#Median :1200   Median : 75.00   Median : 82.0   Median :13.60   Median :21.00  
#Mean   :1341   Mean   : 72.66   Mean   : 79.7   Mean   :14.09   Mean   :22.74  
#3rd Qu.:1700   3rd Qu.: 85.00   3rd Qu.: 92.0   3rd Qu.:16.50   3rd Qu.:31.00  
#Max.   :6800   Max.   :103.00   Max.   :100.0   Max.   :39.80   Max.   :64.00  
#Expend        Grad.Rate      Elite    
#Min.   : 3186   Min.   : 10.00   No :699  
#1st Qu.: 6751   1st Qu.: 53.00   Yes: 78  
#Median : 8377   Median : 65.00            
#Mean   : 9660   Mean   : 65.46            
#3rd Qu.:10830   3rd Qu.: 78.00            
#Max.   :56233   Max.   :118.00
plot(college$Outstate, Elite)
hist(college$Enroll, college$PhD)

# 9
Auto = read.csv("Auto.csv")
# a
sapply(Auto, class)
# The "name" is qualitative and the rest is quantitative
# b
range(mpg) #9.0 46.6
range(Auto$cylinders) # 3 8
range(displacement)# 68 455
range(as.numeric(horsepower)) # NA NA
# c
quant <- sapply(Auto, is.numeric)
sapply(Auto[, quant], function(x) signif(c(mean(x), sd(x)), 2))
# d
output <- sapply(Auto[-10:-85, quant], function(x) round(c(range(x), mean(x), sd(x)), 2))
rownames(output) <- c("min", "max", "mean", "sd")
output
#mpg cylinders displacement  weight acceleration  year origin
#min  11.00      3.00        68.00 1649.00         8.50 70.00   1.00
#max  46.60      8.00       455.00 4997.00        24.80 82.00   3.00
#mean 24.44      5.37       187.05 2933.96        15.72 77.15   1.60
#sd    7.91      1.65        99.64  810.64         2.68  3.11   0.82
# e
Auto$horsepower <- as.numeric(Auto$horsepower)
Auto$name <- as.numeric(Auto$name)

pairs(Auto)

# 10
# a
Boston
dim(Boston) # 506  14
summary(Boston) 
#crim                zn             indus            chas        
#Min.   : 0.00632   Min.   :  0.00   Min.   : 0.46   Min.   :0.00000  
#1st Qu.: 0.08205   1st Qu.:  0.00   1st Qu.: 5.19   1st Qu.:0.00000  
#Median : 0.25651   Median :  0.00   Median : 9.69   Median :0.00000  
#Mean   : 3.61352   Mean   : 11.36   Mean   :11.14   Mean   :0.06917  
#3rd Qu.: 3.67708   3rd Qu.: 12.50   3rd Qu.:18.10   3rd Qu.:0.00000  
#Max.   :88.97620   Max.   :100.00   Max.   :27.74   Max.   :1.00000  
#nox               rm             age              dis              rad        
#Min.   :0.3850   Min.   :3.561   Min.   :  2.90   Min.   : 1.130   Min.   : 1.000  
#1st Qu.:0.4490   1st Qu.:5.886   1st Qu.: 45.02   1st Qu.: 2.100   1st Qu.: 4.000  
#Median :0.5380   Median :6.208   Median : 77.50   Median : 3.207   Median : 5.000  
#Mean   :0.5547   Mean   :6.285   Mean   : 68.57   Mean   : 3.795   Mean   : 9.549  
#3rd Qu.:0.6240   3rd Qu.:6.623   3rd Qu.: 94.08   3rd Qu.: 5.188   3rd Qu.:24.000  
#Max.   :0.8710   Max.   :8.780   Max.   :100.00   Max.   :12.127   Max.   :24.000  
#tax           ptratio          black            lstat            medv      
#Min.   :187.0   Min.   :12.60   Min.   :  0.32   Min.   : 1.73   Min.   : 5.00  
#1st Qu.:279.0   1st Qu.:17.40   1st Qu.:375.38   1st Qu.: 6.95   1st Qu.:17.02  
#Median :330.0   Median :19.05   Median :391.44   Median :11.36   Median :21.20  
#Mean   :408.2   Mean   :18.46   Mean   :356.67   Mean   :12.65   Mean   :22.53  
#3rd Qu.:666.0   3rd Qu.:20.20   3rd Qu.:396.23   3rd Qu.:16.95   3rd Qu.:25.00  
#Max.   :711.0   Max.   :22.00   Max.   :396.90   Max.   :37.97   Max.   :50.00  
# b
pairs(Boston)
# c
# d
# e
summary(Boston$chas==1)#35
# f
median(Boston$ptratio)#19.05
# g
which.min(Boston$medv)#399
# h
summary(Boston$rm > 7)#64
summary(Boston$rm > 8)#13

x = c(1, 2, 3)
y = seq(length = 3, from = 1, by = 3)

DataFrame =  as.data.frame(y)
