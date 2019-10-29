# nuovo commento
# nuove funzioni
# ancora un commento!

# specifying needed libraries
library("lme4")

# GET WORKING DIRECTORY
getwd()

# check if folder has changed
getwd()


# read table, write table
fish=read.table("c:/PhD/fishery.txt", header=T)
# check
fish

y=fish$price
x=fish$qty



# pairs, scatterplot
plot(x, y, xlab="x", ylab="y", main="scatterplot")


# simple linear regression
outreg=lm(y ~ x, data=fish)

# summary model #1
summary(outreg)

# intercept removed
outreg1=lm(y ~ x - 1, data=fish)

# summary model #2
summary(outreg1)




# plot model #1
plot(x, y,  xlab="Quantity", ylab="Price", main="Fish Dataset")
# superimpose regression line  (line() after plot())
yhat=outreg$fitted.values
lines(x,yhat,lwd=3, col="red")

# plot model #1 (result is more or less the same)
plot(x, y,  xlab="Quantity", ylab="Price", main="Fish Dataset")
# superimpose regression line  (line() after plot())
yhat1=outreg1$fitted.values
lines(x,yhat1,lwd=3, col="blue")



# residual plot
res=outreg$residuals
plot(yhat, res , xlab="y hat", ylab="residuals", ylim=c(-0.7,0.8),main="residuals plot")
text(yhat, res , labels=firms$firm, cex= 0.7, pos=3)
abline(h=0, lwd=2)



# normal plot and other stuff
qqnorm(res, datax = T, main="Residuals Normal Probability Plot", lwd=2)
res.ord=sort(res)
n=length(res)
ranks=1:n
F.emp=(ranks-0.5)/n
z_j=qnorm(F.emp)
y_j=lm(z_j~res.ord)$fitted.values
lines(res.ord, y_j, col="red", lwd=2)
