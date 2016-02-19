
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

### Let's create some new objects:


```r
> x <- 3 * 8 + 6
> y <- 1:12
> y2 <- y**2
```

Let's combine y and y2 both of which are vectors of length 12 with the 2 Constants month.abb and month.name. An easy way to do this is to use cbind() - but this will make (or coerce) ALL of the vectors to the same type. Here we're mixing numbers and characters, so R makes them all character variables. df1 is of "matrix" class type. A matrix in R has to have all elements in every row and column be the same type. In this case everything is now a character type. You can see this running the structure `str()` commands.

### Combine objects to make new objects
#### Create a Matrix Using `cbind()`


```r
> df1 <- cbind(y, y2, month.abb, month.name)
> class(df1)
```

```
[1] "matrix"
```

```r
> str(df1)
```

```
 chr [1:12, 1:4] "1" "2" "3" "4" "5" "6" "7" "8" "9" ...
 - attr(*, "dimnames")=List of 2
  ..$ : NULL
  ..$ : chr [1:4] "y" "y2" "month.abb" "month.name"
```

#### Create a Data Frame Using `data.frame()`

Another way to do this is using the `data.frame()` function. A data frame can handle multiple different data types at the same time. The `data frame` is actually a specical case of a `list` type which also mixes different types of objects and variables. Since `y`, `y2`, `month.abb` and `month.name` are all the same length of 12 - we can combine them together as follows. Data frames require the vectors to all be the same length.


```r
> df1a <- data.frame(y,y2,month.abb,month.name)
> class(df1a)
```

```
[1] "data.frame"
```

```r
> str(df1a)
```

```
'data.frame':	12 obs. of  4 variables:
 $ y         : int  1 2 3 4 5 6 7 8 9 10 ...
 $ y2        : num  1 4 9 16 25 36 49 64 81 100 ...
 $ month.abb : Factor w/ 12 levels "Apr","Aug","Dec",..: 5 4 8 1 9 7 6 2 12 11 ...
 $ month.name: Factor w/ 12 levels "April","August",..: 5 4 8 1 9 7 6 2 12 11 ...
```

#### Creating a Combination of Different Objects - different structure and different classes - Make a List using `list()`

Lists are a more general object type - you can mix and match types of variables and mix and match types of objects. In the example below we can combine 3 objects:
* `x` - a single number (vector of length 1)
* `y` - a integer vecotr of length 12
* `df1a` - the data frame we created above - so YES we have now put a data frame which is a special kind of list inside another list!


```r
> list1 <- list(x,y,df1a)
> class(list1)
```

```
[1] "list"
```

```r
> str(list1)
```

```
List of 3
 $ : num 30
 $ : int [1:12] 1 2 3 4 5 6 7 8 9 10 ...
 $ :'data.frame':	12 obs. of  4 variables:
  ..$ y         : int [1:12] 1 2 3 4 5 6 7 8 9 10 ...
  ..$ y2        : num [1:12] 1 4 9 16 25 36 49 64 81 100 ...
  ..$ month.abb : Factor w/ 12 levels "Apr","Aug","Dec",..: 5 4 8 1 9 7 6 2 12 11 ...
  ..$ month.name: Factor w/ 12 levels "April","August",..: 5 4 8 1 9 7 6 2 12 11 ...
```

### Selecting parts and subsets of objects
#### Selecting individual elements

For the matrix `df1` we created using `cbind()` above, we can "select" elements from inside `df1` as follows. You can select elements using the object name followed by brackets []. Inside the brackets you put in 2 values - the row number followed by the column number separated by a comma. Let's select the ELEMENT in row 3, column 3 of `df1`.


```r
> df1[3,3]
```

```
month.abb 
    "Mar" 
```

#### Select a COLUMN

We can also select a whole column by leaving the row value empty which implies to select all rows and then only provide the column number after the comma. Let's select COLUMN 3 of `df1`.


```r
> df1[,3]
```

```
 [1] "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov"
[12] "Dec"
```

#### Select a ROW

We can also select a whole row by leaving the column value empty which implies to select all columns and then only provide the row number before the comma. Let's select ROW 5 of `df1`.


```r
> df1[5,]
```

```
         y         y2  month.abb month.name 
       "5"       "25"      "May"      "May" 
```

### Compare class types of variables

As we noted above ALL of the elements in `df1` are character type becuase we used the `cbind()` command and we mixed numeric and character type vectors. We can confirm this by using the `class()` and `str()` functions to see the class and structure of the 1st column of `df1`.


```r
> df1[,1]
```

```
 [1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12"
```

```r
> class(df1[,1])
```

```
[1] "character"
```

```r
> str(df1[,1])
```

```
 chr [1:12] "1" "2" "3" "4" "5" "6" "7" "8" "9" ...
```

Let's compare this with the 1st column of `df1a` which was created using the `data.frame()` command where the types of vectors could be mixed together. So the `class()` and `str()` of `df1a[,1]` should be an integer type instead of character type.


```r
> df1a[,1]
```

```
 [1]  1  2  3  4  5  6  7  8  9 10 11 12
```

```r
> class(df1a[,1])
```

```
[1] "integer"
```

```r
> str(df1a[,1])
```

```
 int [1:12] 1 2 3 4 5 6 7 8 9 10 ...
```

### Create some more objects

We'll also create `z` and `sinz` and then combine them together using `data.frame()` to make one more data frame object `df2`.


```r
> z <- seq(0,10,.5)
> sinz <- sin(z)
> df2 <- data.frame(z, sinz)
```

### Clean up redundant objects

Notice that we created `y` and `y2` and included these in matrix `df1` and in data frame `df1a`. So, now we have the same data/information in 2 places which is redundant. We could remove `y` and `y2` since they are now contained inside `df1` and in `df1a`. Similarly, we created `z` and `sinz` which are now also contained inside `df2`. So, let's **clean** up our environment by removing `y`, `y2`, `z`, `sinz`. 

Let's list the current list of objects and then remove these and list the objects again.


```r
> ls()
```

```
[1] "df1"   "df1a"  "df2"   "list1" "sinz"  "x"     "y"     "y2"    "z"    
```

```r
> rm(y, y2, z, sinz)
> ls()
```

```
[1] "df1"   "df1a"  "df2"   "list1" "x"    
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
[1] "df1"   "df1a"  "df2"   "list1" "x"    
```

```r
> ls.str()
```

```
df1 :  chr [1:12, 1:4] "1" "2" "3" "4" "5" "6" "7" "8" "9" ...
df1a : 'data.frame':	12 obs. of  4 variables:
 $ y         : int  1 2 3 4 5 6 7 8 9 10 ...
 $ y2        : num  1 4 9 16 25 36 49 64 81 100 ...
 $ month.abb : Factor w/ 12 levels "Apr","Aug","Dec",..: 5 4 8 1 9 7 6 2 12 11 ...
 $ month.name: Factor w/ 12 levels "April","August",..: 5 4 8 1 9 7 6 2 12 11 ...
df2 : 'data.frame':	21 obs. of  2 variables:
 $ z   : num  0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 ...
 $ sinz: num  0 0.479 0.841 0.997 0.909 ...
list1 : List of 3
 $ : num 30
 $ : int [1:12] 1 2 3 4 5 6 7 8 9 10 ...
 $ :'data.frame':	12 obs. of  4 variables:
x :  num 30
```

### More on selecting elements in objects

Let's select the 1st column of df2. In addition to using the brackets [] you can also SELECT variables in lists or in data frames by using the $ dollar sign which is another selector in R. Also you can put comments after code.


```r
> df2[,1] # use the column number
```

```
 [1]  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5
[15]  7.0  7.5  8.0  8.5  9.0  9.5 10.0
```

```r
> df2$z # select by column name
```

```
 [1]  0.0  0.5  1.0  1.5  2.0  2.5  3.0  3.5  4.0  4.5  5.0  5.5  6.0  6.5
[15]  7.0  7.5  8.0  8.5  9.0  9.5 10.0
```

You can combine these selectors. Here we'll use the $ dollar sign to select the column "month.name" in `df1a`. Once that column is selected, we can use the brackets to pull out the 3rd element in this column variable - this should be the month name "March". NOTE: This variable is technically a factor so ignore the 2nd line of output below which says there are 12 levels. Factors will be explained later in Workshop 4.


```r
> df1a$month.name[3]
```

```
[1] March
12 Levels: April August December February January July June March ... September
```

### Saving objects, workspace and datasets

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
[1] "bib"  "df1"  "df1a" "df2"  "x"    "y"    "y2"   "z"   
```

You have now successfully accomplished the following:
* created data objects in R
* saved your entire workspace collection of objects
* saved a specific data frame object
* cleared your workspace
* loaded back the specific data frame object
* and loaded back your entire workspace

Next - let's load or import external data files (such as from Excel, CSV and SPSS) and save them back out.
