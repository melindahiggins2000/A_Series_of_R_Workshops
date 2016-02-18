
# Workshop 2 - Part 2
## Import, Export External Data

--- 

## Example Datafiles

I have created a simple dataset for us to work with. The files are available via Dropbox at [https://www.dropbox.com/sh/vlo5bzrl5ayo1bk/AADD0WieyuEdyGwiveuCoRr-a?dl=0](https://www.dropbox.com/sh/vlo5bzrl5ayo1bk/AADD0WieyuEdyGwiveuCoRr-a?dl=0)

```
The following files are in this folder:
02/18/2016  03:22 PM             2,513 Dataset_01.sav
09/13/2013  02:25 PM            30,208 Dataset_01.xls
09/07/2013  05:44 PM            10,338 Dataset_01.xlsx
09/13/2013  02:26 PM               567 Dataset_01_comma.csv
09/13/2013  02:26 PM               567 Dataset_01_tab.txt
09/07/2013  05:45 PM            30,022 NRSG736_01Handout.docx
```

These data files include:
* XLS - the older 1997-2003 EXCEL file format
* XLSX - the newer EXCEL file workbook format
* CSV - a comma delimited dataset
* xxx_tab.TXT - a TAB delimited dataset
* SAV - SPSS file format

We will work through importing each of these file types.

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
























