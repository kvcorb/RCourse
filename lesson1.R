# master version
# other comments corrected local mod
# other comments
# new comment
# more comments


# some data
whales <- c(74,122,235,111,292,111,211,133,156,79,125,156,183)     
whales

# the same as above
x = c(74, 122, 235, 111, 292, 3)
y = c(111, 211, 133, 156, 79, 3)
z=c(x,y)


sum(whales)                     # total number of beachings
length(whales)                  # length of data vector
sum(whales)/length(whales)      # average no. of beachings
mean(whales)                    # mean function finds average


# some elementary statistics
x = c(2,3,5,7,11)
pippo = mean(x)
x - pippo   # the difference
(x - pippo)^2                    # the squared difference
sum((x -  pippo)^2)               # sum of squared  differences
n = length(x)
n
varianza=sum((x-pippo)^2)/n             # variance
  std <- sqrt(sum((x-pippo)^2)/n)       # standard deviation

### built in alternatives (can you spot the difference?)
var(x)
sd(x)



# sequences

1:10
rev(1:10)                       # countdown
10:1                            # a > b

seq(1,9,by=2)                   # odd numbers
seq(1,11,by=2)                  # as 11 > 10 it is not included
seq(1,9,length=5)               # 5 numbers only

rep(1,10)

rep(1:3,30)



# subsetting
ebay = c(88.8, 88.3, 90.2, 93.5, 95.2, 94.7, 99.2, 99.4, 101.6)
length(ebay)

 ebay[1]
 ebay[9]
 ebay[length(ebay)] # in case length isn't known
 ebay[1:4]

 selezione=c(1,5,9)
 ebay[selezione]
 
 ebay[-1] # all but the first
 
 ebay[-(1:4)] # all but the 1st - 4th

 ebay[-c(1,4)] # all but the 1st - 4th
 
 ebay[8:11]=c(97.0,99.3,102.0,101.8)
 
 ebay

# logical values
 ebay > 100
 
 ebay[ ebay > 100 ] # values bigger than 100

 greater= which(ebay > 100) # which indices

  ebay[c(9,12,13)] # directly
  ebay[greater] # indirectly
 
  x = 1:5
  x < 5 # is x less than 5

  x > 1 # is x more than 1

  x >  & x < 5 # is x bigger than 1 and less than 5

  x > 1 && x < 5 # First one is false

  x > 1 | x < 5 # is x bigger than 1 or less than 5

  x > 1 || x < 5 # First one true

  x == 3 # is x equal to 3

  x != 3 # is x not equal to 3

  
    
    ! x == 3 # not (x equal to 3)

 
 
 

# 
 x = 1:3
 names(x) = c("io","tu",'essi stessi') # set the names
 
 x['essi stessi']
 
 




# distributions

x=rnorm(1000)
ncountries=6
a0 <- rnorm(ncountries, mean=108, sd = 1.5)

# plot a normal density
x=seq(from=-4,to=4,by=0.1)
y=dnorm(x)
plot(x,y, type='l')
 
 
# some graphics
whales <- c(74,122,235,111,292,111,211,133,156,79)


plot(x,whales)

plot(x,whales, type="l")

x=seq(from=-5, to=5,by=0.1)

plot(x,dnorm(x), type="l")

plot(x,pnorm(x), type="l")


plot(x,pnorm(x), type="l", lwd = 4, col="red", lty=3, ylab="F(x)")


plot(x,pnorm(x), type="l", lwd = 4, col="red", lty=3, ylab="F(x)", xlim=c(-2.5,2.5), main="cumulative function")


x=rnorm(1000)

hist(x)

hist(x,br=100, freq=F)                  # more informative!

hist(x,br=c(-6,-1,0,3,5), freq=F)      # more informative!


#  uniform distribution


x=seq(from=-5, to=5,by=0.01)
plot(x,dunif(x,min=-2,max=2), type="l", lwd = 4, col="blue", lty=4, ylab="f(x)", xlim=c(-2.5,2.5), ylim=c(0,1.2),main="density function")

lines(x,dunif(x), type="l", lwd = 4, col="red", lty=2, ylab="f(x)", xlim=c(-2.5,2.5), ylim=c(0,1.2))

# par() to set graphics parameters

# GET WORKING DIRECTORY
getwd()


# SET WORKING DIRECTORY *** THIS NEEDS TO BE FIXED BY THE USER ***
setwd("C:/PhD")

# check if folder has changed
getwd()


firms=read.table("clipboard", sep="\t") 


# read table, write table
firms=read.table("c:/PhD/dati.txt", header=T)
# replace col #1
names(firms)=c("firm","x","y")
# check
firms


# pairs, scatterplot
plot(firms$x, firms$y, xlab="x", ylab="y",xlim=c(0,40), ylim=c(0,9), main="scatterplot")


pairs(firms[,2:3])

# simple linear regression

outreg=lm(firms$y ~ firms$x, data=firms)

# also

y=firms$y
x=firms$x
outreg=lm(y ~ x, data=firms)

# summary
summary(outreg)

# some interesting quantities
# remember the $ operator on lists 

outreg$coefficients

outreg$residuals

outreg$fitted.values

outreg$model



# plot, summary
plot(firms$x, firms$y, xlim=c(0,40), ylim=c(0,9), xlab="numero di dipendenti", ylab="vendite in milioni di Euro", main="scatterplot")

# superimpose regression line  (line() after plot())
yhat=outreg$fitted.values
lines(x,yhat,lwd=3, col="red")

# labelling units

text(firms$x, firms$y, labels=firms$firm, cex= 1.7, pos=3)

# residual plot

res=outreg$residuals

plot(yhat, res , xlab="y hat", ylab="residuals", ylim=c(-0.7,0.8),main="residuals plot")

text(yhat, res , labels=firms$firm, cex= 0.7, pos=3)

abline(h=0, lwd=2)



# obtaining help
help("abs")
help("lm")


# specifying needed libraries
library("lme4")






#e <- file.choose()
lauree=read.csv("laureandi.csv", header = TRUE, sep = ";")

x <- read.table("C:/Users/tania/Documents/R/Simulati-Multilivello/simBRA.txt", sep="\t",header=T)
ncountries <- length(table(x$country))
N <- nrow(x)/ncountries
set.seed(nchar("simulseed"))

