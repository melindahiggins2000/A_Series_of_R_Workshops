
# Workshop 2 - Part 1
## RStudio Environment & Setup

--- 

## Getting started

Open RStudio and open a new R script (File/New File/R Script).

Each time you start a new project, it is a good idea to create a new folder on your system where you will keep all of your files: data, coding, output and reports/documentation.

Once your new folder is created, use `setwd()` to make sure that RStudio is setup to look by default in this directory for your files and where it will save your work.

For the purposes of my demonstration here I am working in the following directory `C:\MyR\2016_Spring_RWorkshops`. **NOTE in windows the file path uses the backslash character "\". R does not understand this as part of a file path. You must change these backslashes to forward slashes "/" in order for the file path to work. The backslash "\" is a special character in R.** I do not think this is a problem on a Mac.

So to change the directory we run the following command (see below). This can also be accomplished using the menu option Session/Set Working Directory/Choose Directory or using the HOT KEYS `Cntl+Shift+H` (on a PC). You'll notice when choosing this menu option the command I show below is automatically run in the console.

While the menu options are handy it is a good idea to include the `setwd()` command into your R script so you document explicitly where you are working and organizing your project files.


```r
> getwd()
```

```
[1] "C:/MyGithub/A_Series_of_R_Workshops/workshop2"
```

```r
> setwd('C:/MyR/2016_Spring_RWorkshops')
> getwd()
```

```
[1] "C:/MyR/2016_Spring_RWorkshops"
```

## Clear your workspace when starting a new project

It is also a good idea when starting a NEW project for the FIRST time to clear your workspace. This can be accomplished through the menus in Session/Clear Workspace. However, this can also be accomplished with the following R code:


```r
> rm(list = ls())
> ls()
```

```
character(0)
```

NOTE: You do NOT need to do this every time you open R. It is just a good idea to do it at the beginning of a project. Once you've got a project running and underway, you probably want to pick up where you left off and keep the objects and data elements you've created so far in your global environment. That is OK.

## Cleaning up your environment as you go.

You can also remove objects as you go. This is especially helpful when working with (A) really large data files and objects and (B) if you are working with a large number of objects or with programs or functions that create many objects that you don't need long term (i.e. temporary files).

Let's create some objects:


```r
> x <- 3 * 8 + 6
> y <- 1:12
> y2 <- y**2
> df1 <- cbind(y, y2, month.abb, month.name)
> z <- seq(0,10,.5)
> sinz <- sin(z)
> df2 <- cbind(z, sinz)
```

Notice that we created `y` and `y2` and included these in data frame 1 `df1`. So, now we have the same data/information in 2 places which is redundant. So, we could remove `y` and `y2` since they are now contained inside `df1`. Similarly, we created `z` and `sinz` which are contained inside `df2`. So, let's **clean** up our environment by removing `y`, `y2`, `z`, `sinz`. 

Let's list the current list of objects and then remove these and list the objects again.


```r
> ls()
```

```
[1] "df1"  "df2"  "sinz" "x"    "y"    "y2"   "z"   
```

```r
> rm(y, y2, z, sinz)
> ls()
```

```
[1] "df1" "df2" "x"  
```

You should see that these 4 objects have now been removed from your global environment.

## Saving your work, i.e. your "workspace" - Moving R data and objects in and out of the R environment using `save` and `load`

Now we have 3 objects in our Global Enviroment or "Workspace". These objects are 
* x (a single numeric value of 30)
* df1 (a data frame with 12 rows and 4 columns)
* df2 (a data frame with 21 rows and 2 columns)

List these objects using `ls()` or the more detailed `ls.str()` functions: 

```r
> ls()
```

```
[1] "df1" "df2" "x"  
```

```r
> ls.str()
```

```
df1 :  chr [1:12, 1:4] "1" "2" "3" "4" "5" "6" "7" "8" "9" ...
df2 :  num [1:21, 1:2] 0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 ...
x :  num 30
```

You can save all of these objects as a `*.RData` file which saves the workspace with all of the objects into 1 file. This can be achieved a couple of ways. In the Global Enviroment window (top right) you can click on the "save disk" icon. This can also be achieved through the menus at Session/Save Workspace As. You can also run the `save()` or `save.image()` functions.

Let's use the `save.image()` function:


```r
> save.image("workshop2objects.RData")
```

We could also save individual objects as `*.RData` files. For example suppose we wanted to save the 2nd data frame `df2`, we would use the `save()` function.


```r
> save(df2, file="df2.RData")
```

Look in your current working directory and make sure that you now see both of these files: <br> <br> `workshop2objects.RData` <br> and <br> `df2.RData`

Now that we know these files have been saved, let's remove them from our environment and add them back in. We will use the `load()` command to read these data back into our environment.

First clear the environment:


```r
> rm(list = ls())
```

Then `load()` the data back. Let's load `df2.RData` first and then the complete workspace `workshop2objects.RData`.


```r
> load(file="df2.RData")
> ls()
```

```
[1] "df2"
```

Next the full workspace. NOTE: Ignore the `bib` object shown below which is created as part of this RGitbook.


```r
> load("workshop2objects.RData")
> ls()
```

```
[1] "bib" "df2" "z"  
```

You have now successfully accomplished the following:
* created data objects in R
* saved your entire workspace collection of objects
* saved a specific data frame object
* cleared your workspace
* loaded back the specific data frame object
* and loaded back your entire workspace

Next - let's load or import external data files (such as from Excel, CSV and SPSS) and save them back out.
