# Load the Teaching Demos library if you don't have it.
install.packages("TeachingDemos")
library(TeachingDemos)

# clt.examp(n) will show four functions, and means of samples with size n

clt.examp() #n = 1, the distributions themselves
clt.examp(2)
clt.examp(3)
clt.examp(4) 
# notice how each distribution is slowly transforming into a normal

clt.examp(10)
clt.examp(20)
clt.examp(50) 
# As we increase the sample size, the variance of the normals start to decrease
# Our estimator is becoming more and more precise.