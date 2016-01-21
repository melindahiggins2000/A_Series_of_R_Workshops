# ====================================
# Workshop 1
# Part 1 - R Script
# Working in Basic R Environment
# ====================================

# Find out which directory R thinks is your home directory

getwd()

# change it to a directory on your computer
# that already exists
# The example below works on a PC
# notice that the /s are opposite from the usual
# on a PC "C:\MyR\2016_Spring_RWorkshops"
#
# I think on a Mac this would be
# setwd("/MyR/2016_Spring_RWorkshops")

setwd("C:/MyR/2016_Spring_RWorkshops")

# check to see that the working directory changed

getwd()

# ====================================
# Let's do some math with R
# ====================================

2 + 2

3 + (4*8)

3 + 4*8

6 + (8**2)

12^2

pi

4 * pi

# ====================================
# pi is a Constant built into R
# what are the others?
# ====================================

help(Constants)

LETTERS

letters

month.abb

month.name

# ====================================
# Let's create some data 
# and variables with R 
# ====================================

x <- 3 * 5

x

y <- 1:12

y

z <- seq(0,10,.5)

# click on Edit/Data Editor
# choose z
# can also invoke data editor with
# fix() function

fix(z)

# also try View function
# note that CaSe matters

view(z)
View(z)

# perform a transformation on z and save the results

sinz <- sin(z)

# let's look at the objects created so far

ls()

# make a simple plot

plot(z,sinz)

# redo plot with axis labels, a title and a subtitle

plot(z,sinz,xlab='Z = Sequence 0 to 10 by 0.5',ylab='Sin(Z)',main='Main title',sub='example subtitle')

# add a BLUE line

lines(z,sinz,col='blue')

# customize the points
# plotting character pch 23 is a filled diamond
# col defines the color
# bg defines the filled or background color

points(z,sinz,pch=23,col='red',bg='black')

# select code above, right click and "run selection"
# or highlight code and click CTRL-R
# specifically run the following code all together
# the spaces and line returns added for clarity
# Note: RStudio helps with good formatting practices

plot(z, sinz,
        xlab = 'Z = Sequence 0 to 10 by 0.5',
        ylab = 'Sin(Z)',main='Main title',
        sub = 'example subtitle')
lines(z, sinz, col = 'blue')
points(z, sinz, pch = 23, col = 'red', bg = 'black')

# In graphics Window, right click and either
# copy as either metafile or bitmap.
# or Save as metafile or postscript
# Metafile is the Windows Vector graphics format
# which is scalable and portable. The bitmap format
# will not scale as well. Many journals prefer postscript.







