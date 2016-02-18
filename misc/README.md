
# Miscellaneous Tests

Test a few random emojis :heart_eyes: :sparkles: :octocat: :large_blue_circle:

# and test some citations

Here is a citation for `knitr` [@xie2015knitr] which didn't work like usual citations. so let's try `citet` Temple Lang and team (2015) or also with `citep` (Temple Lang and team, 2015).

Try one more (Rehdanz and Maddison, 2005) and (Wickham and Chang, 2015).

Try one of mine (Fitzpatrick, Higgins, Holguin, et al., 2010) 

also try (Fitzpatrick, Higgins, Holguin, et al., 2010)

Try one more (Rehdanz and Maddison, 2005).

and NOTE a usual citation [@wickham2015devtools] for Hadley Wickham's `devtools` does not work here. BUT this does using `citep` and the assigned bibliography `bib` object; the code `citep(bib["wickham2015devtools"])` generates this (Wickham and Chang, 2015).

## January 22, 2016 <br> 10:00 - 11:50 <br> Nursing Building Room 112

Test blockquotes

> This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
> consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
> Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
> 
> Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
> id sem consectetuer libero luctus adipiscing.

and another

> This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.

> Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
id sem consectetuer libero luctus adipiscing.

and a nested one

> This is the first level of quoting.
>
> > This is nested blockquote.
>
> Back to the first level.

one with a script

> ## This is a header.
> 
> 1.   This is the first list item.
> 2.   This is the second list item.
> 
> Here's some example code:
> 
>     return shell_exec("echo $input | $markdown_script");

Try some line breaks

Line 1   
Line 2   
Line 3   

Try inside a blockquote

> Line 1   
> Line 2   
> Line 3   

3 spaces at end of each line above

different horizontal rules

* * *

one more

***

one more

*****

one more

- - -

one more

---------------------------------------

thats it

