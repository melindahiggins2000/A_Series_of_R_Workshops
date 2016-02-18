# ========================================
# Complete R Script for R Workshop 01
# part 2 run within RStudio
# ========================================

# ========================================
# type in math commands
# ========================================

2 + 2
3 + (4*8)
3 + 4*8
6 + (8**2)
12^2
pi
4 * pi

# ========================================
# create some objects
# ========================================
# create x which had 1 numeric value

x <- 3 * 5
x

# create y which is a numeric (integer) vector
# with 12 elements

y <- 1:12
y

# create z a numeric vector
# containing a sequence of numbers from
# 0 to 10 in units of 0.5

z <- seq(0,10,.5)

# the above code can also be done with the
# explict function arguments defined
# see the examples in help(seq)

z <- seq(from=0, to=10, by=0.5)

# create new object sinz which is a numeric
# vector now containing the sin (sine function) 
# of the z values

sinz <- sin(z)

# ========================================
# while you can see information about each of these
# objects in the Global Environment (top right)
# of the RStudio window, the function length()
# is useful for determining how many elements are
# in a given vector/data object.
# ========================================

length(x)
length(y)
length(z)
length(sinz)

# ========================================
# other functions that are helpful for finding
# out about data objects is the str() "structure"
# function and the class() function.
# ========================================

str(y)
class(y)
str(z)
class(z)

# ========================================
# so, what happens when we mix different kinds
# of data inside a vector.
# these first 3 vectors each have elements that 
# are all the same type.
# a1 is numeric
# a2 is character
# a3 is logical
# a4 is mixed numeric, character and logical
#    so R sets all to the best option
#    so a4 becomes all character type
# a5 is also mixed but only numeric and logical
#    In this case, the logical values are converted
#    to numeric and TRUE becomes 1 and FALSE becomes 0
# ========================================

a1 <- c(1,2,3,4,10,11,12,13)
a2 <- c('a','g','f','r','t','s')
a3 <- c(TRUE,FALSE,TRUE,TRUE,FALSE)
a4 <- c(1,2,'a','b',TRUE,FALSE)
a5 <- c(1,2,3,4,TRUE,FALSE)

# use the class() function to investigate these further

class(a1)
class(a2)
class(a3)
class(a4)
class(a5)

# ========================================
# so we've learned about small data objects
# but ultimately we'll be working with a 
# large dataset with numerous variables of
# different types. In R these datasets are
# called data frames. We can create one
# using the data.frame() function. Let's
# combine y which contains numbers from 1 to 12
# with the abbreviations and names of the months.
# ========================================

df1 <- data.frame(y, month.name, month.abb)

# since this is a small dataset we can
# look at in the console - just type the
# object name.

df1

# we can also View() the dataset in the viewer.
# you can also click on the little square table
# to the right of the object in the Global 
# Envionment window top right and the viewer
# will also open up.

View(df1)

# ========================================
# Installing a package
# let's try adding in some additional
# functionality into R. We'll install
# the ggplot2 package using the 
# install.packages() function and then load
# the ggplot2 package using the library()
# function.
# ========================================

install.packages("ggplot2")
library(ggplot2)
help(package="ggplot2")

# ========================================
# here are the plotting commands we used
# earlier. these are all available in the
# base R package.
# ========================================

plot(z, sinz,
     xlab = 'Z = Sequence 0 to 10 by 0.5',
     ylab = 'Sin(Z)',main='Main title',
     sub = 'example subtitle')
lines(z, sinz, col = 'blue')
points(z, sinz, pch = 23, col = 'red', bg = 'black')

# ========================================
# However, now that we've added ggplot2
# we can now use the qplot() function
# to do a "quick plot."
# ========================================

qplot(z, sinz,
      geom = c("point", "line"),
      xlab = 'Z = Sequence 0 to 10 by 0.5',
      ylab = 'Sin(Z)',
      main = 'Main title')

# ========================================
# It is a good idea when collaborating
# and sharing your code with others to take
# a snapshot of your computer system and your
# specific R environment and session settings.
# you can do this using the sessionInfo()
# function. Here is mine.
# ========================================

sessionInfo()