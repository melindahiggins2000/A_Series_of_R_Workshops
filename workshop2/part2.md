
# Workshop 2 - Part 2
## Import, Export External Data

--- 

## Example Datafiles

I have created a simple dataset for us to work with. The files are available via Dropbox at [https://www.dropbox.com/sh/vlo5bzrl5ayo1bk/AADD0WieyuEdyGwiveuCoRr-a?dl=0](https://www.dropbox.com/sh/vlo5bzrl5ayo1bk/AADD0WieyuEdyGwiveuCoRr-a?dl=0)

The data files include:
* XLS - the older 1997-2003 EXCEL file format
* XLSX - the newer EXCEL file workbook format
* CSV - a comma delimited dataset
* xxx_tab.TXT - a TAB delimited dataset
* SAV - SPSS file format
* and R scripts (xxx.R) for Workshops 1 and 2 so far...

We will work through importing each of these datafile types.

---

## The dataset description

The dataset we'll be working with here has 8 variables and 20 cases (or 20 subjects).

<table>
 <thead>
  <tr>
   <th style="text-align:right;"> SubjectID </th>
   <th style="text-align:right;"> Age </th>
   <th style="text-align:right;"> WeightPRE </th>
   <th style="text-align:right;"> WeightPOST </th>
   <th style="text-align:right;"> Height </th>
   <th style="text-align:right;"> SES </th>
   <th style="text-align:right;"> GenderSTR </th>
   <th style="text-align:right;"> GenderCoded </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 150 </td>
   <td style="text-align:right;"> 145 </td>
   <td style="text-align:right;"> 5.6 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> m </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 167 </td>
   <td style="text-align:right;"> 166 </td>
   <td style="text-align:right;"> 5.4 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> f </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 143 </td>
   <td style="text-align:right;"> 135 </td>
   <td style="text-align:right;"> 5.6 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> F </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 216 </td>
   <td style="text-align:right;"> 201 </td>
   <td style="text-align:right;"> 5.6 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> m </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5 </td>
   <td style="text-align:right;"> 32 </td>
   <td style="text-align:right;"> 243 </td>
   <td style="text-align:right;"> 223 </td>
   <td style="text-align:right;"> 6.0 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> m </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 6 </td>
   <td style="text-align:right;"> 48 </td>
   <td style="text-align:right;"> 165 </td>
   <td style="text-align:right;"> 145 </td>
   <td style="text-align:right;"> 5.2 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> f </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 50 </td>
   <td style="text-align:right;"> 132 </td>
   <td style="text-align:right;"> 132 </td>
   <td style="text-align:right;"> 5.3 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> m </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 8 </td>
   <td style="text-align:right;"> 51 </td>
   <td style="text-align:right;"> 110 </td>
   <td style="text-align:right;"> 108 </td>
   <td style="text-align:right;"> 5.1 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> f </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 9 </td>
   <td style="text-align:right;"> 46 </td>
   <td style="text-align:right;"> 167 </td>
   <td style="text-align:right;"> 158 </td>
   <td style="text-align:right;"> 5.5 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:right;"> 200 </td>
   <td style="text-align:right;"> 5.8 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> Male </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 11 </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 230 </td>
   <td style="text-align:right;"> 210 </td>
   <td style="text-align:right;"> 6.2 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> m </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 12 </td>
   <td style="text-align:right;"> 40 </td>
   <td style="text-align:right;"> 200 </td>
   <td style="text-align:right;"> 195 </td>
   <td style="text-align:right;"> 6.1 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> f </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 13 </td>
   <td style="text-align:right;"> 45 </td>
   <td style="text-align:right;"> 180 </td>
   <td style="text-align:right;"> 185 </td>
   <td style="text-align:right;"> 5.9 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> f </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 14 </td>
   <td style="text-align:right;"> 52 </td>
   <td style="text-align:right;"> 240 </td>
   <td style="text-align:right;"> 220 </td>
   <td style="text-align:right;"> 6.5 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> m </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 15 </td>
   <td style="text-align:right;"> 24 </td>
   <td style="text-align:right;"> 250 </td>
   <td style="text-align:right;"> 240 </td>
   <td style="text-align:right;"> 6.4 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> M </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 16 </td>
   <td style="text-align:right;"> 35 </td>
   <td style="text-align:right;"> 175 </td>
   <td style="text-align:right;"> 174 </td>
   <td style="text-align:right;"> 5.8 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> F </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 17 </td>
   <td style="text-align:right;"> 51 </td>
   <td style="text-align:right;"> 220 </td>
   <td style="text-align:right;"> 221 </td>
   <td style="text-align:right;"> 6.3 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> m </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 18 </td>
   <td style="text-align:right;"> 43 </td>
   <td style="text-align:right;"> 230 </td>
   <td style="text-align:right;"> 215 </td>
   <td style="text-align:right;"> 2.6 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> m </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 19 </td>
   <td style="text-align:right;"> 36 </td>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:right;"> 180 </td>
   <td style="text-align:right;"> 5.7 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> female </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 20 </td>
   <td style="text-align:right;"> 44 </td>
   <td style="text-align:right;"> 260 </td>
   <td style="text-align:right;"> 240 </td>
   <td style="text-align:right;"> 6.4 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> male </td>
   <td style="text-align:right;"> 1 </td>
  </tr>
</tbody>
</table>



## IMPORT a basic CSV (comma delimited) or TAB (TAB delimited) text data file

Let's import a simple data file in CSV (comma delimited) format. This is the most common simple format used for exchanging data between different software/data handling packages.

In basic R the following functions are useful for reading in or importing in datasets:
* `read.table()`
* `read.csv()` 
* `read.delim()`

For each of these files you need to specify the data file, and possibly also supply whether the dataset has a header row, what the separator character is and more options. To see complete details see `help(read.table)`

For each example below, I am providing the specific directory path. However, if these datafiles are located in your current working directory you can just type the filename without the full path.

### Option 1 - use `read.table()`

The basic code is `read.table(file="xxx", header=TRUE, sep=",")` but these options can be changed as needed if your file does not have a header row or if your file has a separator other than a comma - some separators can be spaces or tabs.


```r
> data.rt <- read.table(file="C:/MyGithub/A_Series_of_R_Workshops/datasets/Dataset_01_comma.csv",
+                       header=TRUE,sep=",")
> data.rt
```

```
   SubjectID Age WeightPRE WeightPOST Height SES GenderSTR GenderCoded
1          1  45       150        145    5.6   2         m           1
2          2  50       167        166    5.4   2         f           2
3          3  35       143        135    5.6   2         F           2
4          4  44       216        201    5.6   2         m           1
5          5  32       243        223    6.0   2         m           1
6          6  48       165        145    5.2   2         f           2
7          7  50       132        132    5.3   2         m           1
8          8  51       110        108    5.1   3         f           2
9          9  46       167        158    5.5   2                    NA
10        10  35       190        200    5.8   1      Male           1
11        11  36       230        210    6.2   1         m           1
12        12  40       200        195    6.1   1         f           2
13        13  45       180        185    5.9   3         f           2
14        14  52       240        220    6.5   2         m           1
15        15  24       250        240    6.4   2         M           1
16        16  35       175        174    5.8   2         F           2
17        17  51       220        221    6.3   2         m           1
18        18  43       230        215    2.6   2         m           1
19        19  36       190        180    5.7   1    female           2
20        20  44       260        240    6.4   3      male           1
```

### Option 2 - use `read.csv()`

Option 2 assumes that there is a header row and the datafile uses a comma separator.


```r
> data.csv <- read.csv(file="C:/MyGithub/A_Series_of_R_Workshops/datasets/Dataset_01_comma.csv")
> data.csv
```

```
   SubjectID Age WeightPRE WeightPOST Height SES GenderSTR GenderCoded
1          1  45       150        145    5.6   2         m           1
2          2  50       167        166    5.4   2         f           2
3          3  35       143        135    5.6   2         F           2
4          4  44       216        201    5.6   2         m           1
5          5  32       243        223    6.0   2         m           1
6          6  48       165        145    5.2   2         f           2
7          7  50       132        132    5.3   2         m           1
8          8  51       110        108    5.1   3         f           2
9          9  46       167        158    5.5   2                    NA
10        10  35       190        200    5.8   1      Male           1
11        11  36       230        210    6.2   1         m           1
12        12  40       200        195    6.1   1         f           2
13        13  45       180        185    5.9   3         f           2
14        14  52       240        220    6.5   2         m           1
15        15  24       250        240    6.4   2         M           1
16        16  35       175        174    5.8   2         F           2
17        17  51       220        221    6.3   2         m           1
18        18  43       230        215    2.6   2         m           1
19        19  36       190        180    5.7   1    female           2
20        20  44       260        240    6.4   3      male           1
```

### Option 3 - use `read.delim()`

Option 3 assumes that there is a header row and the datafile uses a TAB separator.


```r
> data.tab <- read.delim(file="C:/MyGithub/A_Series_of_R_Workshops/datasets/Dataset_01_tab.txt")
> data.tab
```

```
   SubjectID Age WeightPRE WeightPOST Height SES GenderSTR GenderCoded
1          1  45       150        145    5.6   2         m           1
2          2  50       167        166    5.4   2         f           2
3          3  35       143        135    5.6   2         F           2
4          4  44       216        201    5.6   2         m           1
5          5  32       243        223    6.0   2         m           1
6          6  48       165        145    5.2   2         f           2
7          7  50       132        132    5.3   2         m           1
8          8  51       110        108    5.1   3         f           2
9          9  46       167        158    5.5   2                    NA
10        10  35       190        200    5.8   1      Male           1
11        11  36       230        210    6.2   1         m           1
12        12  40       200        195    6.1   1         f           2
13        13  45       180        185    5.9   3         f           2
14        14  52       240        220    6.5   2         m           1
15        15  24       250        240    6.4   2         M           1
16        16  35       175        174    5.8   2         F           2
17        17  51       220        221    6.3   2         m           1
18        18  43       230        215    2.6   2         m           1
19        19  36       190        180    5.7   1    female           2
20        20  44       260        240    6.4   3      male           1
```

## IMPORT data from an EXCEL file XLS and XLSX formats

We will use the `readxl` package. Be sure to install this package `install.package("readxl")` and then load it using `library(readxl)`.

Here is code for reading in a XLS format


```r
> data.xls <- read_excel("C:/MyGithub/A_Series_of_R_Workshops/datasets/Dataset_01.xls", sheet=1)
> data.xls
```

```
   SubjectID Age WeightPRE WeightPOST Height SES GenderSTR GenderCoded
1          1  45       150        145    5.6   2         m           1
2          2  50       167        166    5.4   2         f           2
3          3  35       143        135    5.6   2         F           2
4          4  44       216        201    5.6   2         m           1
5          5  32       243        223    6.0   2         m           1
6          6  48       165        145    5.2   2         f           2
7          7  50       132        132    5.3   2         m           1
8          8  51       110        108    5.1   3         f           2
9          9  46       167        158    5.5   2      <NA>          NA
10        10  35       190        200    5.8   1      Male           1
11        11  36       230        210    6.2   1         m           1
12        12  40       200        195    6.1   1         f           2
13        13  45       180        185    5.9   3         f           2
14        14  52       240        220    6.5   2         m           1
15        15  24       250        240    6.4   2         M           1
16        16  35       175        174    5.8   2         F           2
17        17  51       220        221    6.3   2         m           1
18        18  43       230        215    2.6   2         m           1
19        19  36       190        180    5.7   1    female           2
20        20  44       260        240    6.4   3      male           1
```

Here is code for reading in a XLSX format


```r
> data.xlsx <- read_excel("C:/MyGithub/A_Series_of_R_Workshops/datasets/Dataset_01.xlsx", sheet=1)
> data.xlsx
```

```
   SubjectID Age WeightPRE WeightPOST Height SES GenderSTR GenderCoded
1          1  45       150        145    5.6   2         m           1
2          2  50       167        166    5.4   2         f           2
3          3  35       143        135    5.6   2         F           2
4          4  44       216        201    5.6   2         m           1
5          5  32       243        223    6.0   2         m           1
6          6  48       165        145    5.2   2         f           2
7          7  50       132        132    5.3   2         m           1
8          8  51       110        108    5.1   3         f           2
9          9  46       167        158    5.5   2      <NA>          NA
10        10  35       190        200    5.8   1      Male           1
11        11  36       230        210    6.2   1         m           1
12        12  40       200        195    6.1   1         f           2
13        13  45       180        185    5.9   3         f           2
14        14  52       240        220    6.5   2         m           1
15        15  24       250        240    6.4   2         M           1
16        16  35       175        174    5.8   2         F           2
17        17  51       220        221    6.3   2         m           1
18        18  43       230        215    2.6   2         m           1
19        19  36       190        180    5.7   1    female           2
20        20  44       260        240    6.4   3      male           1
```

## IMPORT data from a SPSS file in SAV format

In order to read datafiles from SPSS, other statistical software, and many other datafile types. To see detailed info look at help for the `foreign` package. Remember to `install.packages("foreign")` and load the package using `library(foreign)`. Run the following code to see details on this package and all the formats supported:

```
help(package = "foreign")
```
We will use this package to read in an SPSS datafile in the SAV format. The function we will use is `read.spss()`. See more detailed information on the various options by running `help(read.spss)`. For now we will specify the filename and tell the function to make sure the file is output as a data frame object using the `to.data.frame` option set to `TRUE`.


```r
> data.spss <- read.spss(file = "C:/MyGithub/A_Series_of_R_Workshops/datasets/Dataset_01.sav",
+                        to.data.frame=TRUE)
> data.spss
```

```
   SubjectID Age WeightPRE WeightPOST Height            SES
1          1  45       150        145    5.6 Average Income
2          2  50       167        166    5.4 Average Income
3          3  35       143        135    5.6 Average Income
4          4  44       216        201    5.6 Average Income
5          5  32       243        223    6.0 Average Income
6          6  48       165        145    5.2 Average Income
7          7  50       132        132    5.3 Average Income
8          8  51       110        108    5.1    High Income
9          9  46       167        158    5.5 Average Income
10        10  35       190        200    5.8     Low Income
11        11  36       230        210    6.2     Low Income
12        12  40       200        195    6.1     Low Income
13        13  45       180        185    5.9    High Income
14        14  52       240        220    6.5 Average Income
15        15  24       250        240    6.4 Average Income
16        16  35       175        174    5.8 Average Income
17        17  51       220        221    6.3 Average Income
18        18  43       230        215    6.2 Average Income
19        19  36       190        180    5.7     Low Income
20        20  44       260        240    6.4    High Income
                  GenderSTR GenderCoded
1  m                               Male
2  f                             Female
3  F                             Female
4  m                               Male
5  m                               Male
6  f                             Female
7  m                               Male
8  f                             Female
9                                  <NA>
10 Male                            Male
11 m                               Male
12 f                             Female
13 f                             Female
14 m                               Male
15 M                               Male
16 F                             Female
17 m                               Male
18 m                               Male
19 female                        Female
20 male                            Male
```

## Create some new variables and save the output

In the datafile we have weights measures at 2 time points and we have height. We can use this data to compute BMI. Since weight is in pounds and height is in inches, we can use the following formula:

`BMI_PRE=(WeightPRE*703)/((Height*12)*(Height*12))`

From here let's work with `data.csv`. Since we have weights and height we can compute BMI. Let's do that here with weights in pounds and height in decminal feet which we'll convert to inches in the formula given here. You'll notice that I'm selecting the variables using the $ dollar sign. I'm also creating 2 NEW variables `bmiPRE` and `bmiPOST`. By creating them on the left side of the `<-` and using the $ this automatically APPENDS these new variables to the exisiting data frame `data.csv`. When we do this the data frame `data.csv` will go from having 8 variables to 9 and then to 10. Watch the global environment window as you run each line of code below.


```r
> data.csv$bmiPRE <- (data.csv$WeightPRE*703)/((data.csv$Height*12)**2)
```

And we'll do it again for the POST weights:

`BMI_POST=(WeightPOST*703)/((Height*12)*(Height*12))`


```r
> data.csv$bmiPOST <- (data.csv$WeightPOST*703)/((data.csv$Height*12)**2)
```

#### Isn't there an easier way besides using $?

So, yes, it is a pain to have to type in the data frame followed by a dollar sign $ and then the variable name. If you know for sure you're going to mainly be working with one data frame, you can ATTACH the variables inside data frame to your current environment so you can access the variables withouth having to type the name of the data frame and $ each time. For more info see this blog post at R-boggers [http://www.r-bloggers.com/to-attach-or-not-attach-that-is-the-question/](http://www.r-bloggers.com/to-attach-or-not-attach-that-is-the-question/)

Once we attach the dataset, you can call the variables directly. See example below to compute the change in BMI from PRE-to-POST and then find the mean of these differences.


```r
> attach(data.csv)
> 
> diff <- bmiPOST - bmiPRE
> mean(diff)
```

```
[1] -1.598245
```

```r
> detach(data.csv)
```

**ALWAYS remember to DETACH your data frame when finished.**

Now that we have a new variable created the `diff` object, it is sitting in the global environment not attached to the original data frame. We can add it to the data frame `data.csv` as follows:


```r
> data.csv$diff <- diff
```

Now that we've updated our dataset, let's save it using the basic `save()` function - we can save it as a R formatted file `xxx.RData`

## EXPORT or SAVE the updated data

We can save it out as a RData file using the `save()` function.


```r
> save(data.csv, 
+      file="C:/MyGithub/A_Series_of_R_Workshops/datasets/datacsv.RData")
```

Save the data out in a delimited format. First we'll do a comma delimited CSV file using `write.csv()`.


```r
> write.csv(data.csv, 
+           file="C:/MyGithub/A_Series_of_R_Workshops/datasets/datacsv.csv")
```

Next we'll do a TAB delimited text file using the `write.table()`.


```r
> write.table(data.csv, 
+           file="C:/MyGithub/A_Series_of_R_Workshops/datasets/datacsv.txt",
+           sep="\t")
```




