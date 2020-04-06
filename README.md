# Revise
Yet another revision markup latex package. This package was created after
the existing packages did not work with the document setup and changes of
a paper revision I was working on. The package does not have many features,
but it worked for my scenario to keep track of additions, deletions, and
replacements.

## Install
The package consists of just the ```revise.sty``` file. The ```install.sh```
script should be able to place it to the right location on a linux system.
If not, one would have to figure out the TEXMF directory structure on the
system and place ```revise.sty``` accordingly.

## Usage
The Revise package supplies the ```\added```, ```\deleted```, and ```\replaced```
commands just like other change tracking packages. At the end of the document,
```\listofchanges``` can be called to append a list of changes.

The individual commands work as follows:
```latex
\added{<content added>}
   % Mark text added to the base document and document in
   % list of changes.

\deleted{<content deleted>}
   % Replace text by colored "[...]" within manuscript and
   % document the deleted content in list of changes.

\replaced{<content deleted>}{<content inserted>}
   % Replace <content deleted> by <content inserted>, mark that
   % one and document the replacement and both contents in list
   % of changes.

\listofchanges
   % Print the list of changes (documented so far) starting with
   % a new page
```
The list of changes is created during compilation by creating a
```\jobname.chng.tex``` document and including it with
```\input```. Hence, only changes up to the point of calling
```\listofchanges``` will be included (which probably makes sense
for a paper revision).

The package is not elaborate and does not ship with adjustment options currently.
Asthetic changes, such as changes coloring and list of changes formatting, can
best be obtained by directly editing ```revise.sty```.
