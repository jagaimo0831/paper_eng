# memo
- とりあえず修論前刷りを英訳する
- ieeeのlatexフォーマットについて参考になりそうなやつ http://did2.blog64.fc2.com/blog-entry-384.html


# RA-L?
- 締め切り: 2/24 https://www.ieee-ras.org/publications/ra-l/information-for-authors-ra-l
- IROS締め切り: 3/1 https://iros2022.org/
- ページ数: 6ページ(IEEE系列の書式?)

# .md viewer
- ctrl + k -> v

# トラブル
- デフォルトのテンプレには変なはてな(?: U+FFFT)が使われていてmake出来ないので置換するか消すこと

# template

April 2, 2003

IEEEtran.bst is the official BibTeX style for authors of the Institute of
Electrical and Electronics Engineers (IEEE) Transactions journals and
conferences. It also may have applications in other academic work such as
theses and technical reports.

IEEEtran.bst is a very comprehensive BibTeX style which provides many
features beyond the standard BibTeX styles - including full support
for references of online documents, patents, periodicals and standards.
See the provided user manual for detailed usage information.


 Enjoy!

Michael Shell
mshell@ece.gatech.edu

*******
Version 1.11 (2003/04/02) changes:

 1) Corrected problem with underscores in URLs when using url.sty.

No changes needed in the documentation.

Minor updates have been made to the IEEEfull.bib and IEEEabrv.bib 
string definitions. 



********************* Files **********************

README                 - This file.

IEEEtran.bst           - The IEEE BibTeX style file.

IEEEtranS.bst          - A version of IEEEtran.bst that sorts the
                         entries. May be of interest for (non-IEEE) work
                         such as theses. (Do not use for IEEE work.)

IEEEtran_bst_HOWTO.pdf - The user manual.

IEEEexample.bib        - An example BibTeX database that contains the
                         references shown in the user manual.

IEEEabrv.bib           - String definitions for the abbreviated names of
                         IEEE journals. (For use with IEEE work.)
                         
IEEEfull.bib           - String definitions for the full names of
                         IEEE journals. (Do not use for IEEE work.)

IEEEbcpat.bib          - Obsolete string definitions provided by older
                         versions of IEEE BibTeX .bst files. (Do not
                         use for IEEE work.)




**********************************************************************
 Legal Notice:
 This code and advice is offered as-is without any warranty either
 expressed or implied; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE!
 User assumes all risk.
 In no event shall IEEE or any contributor to this code
 be liable for any damages or losses, including, but not limited to,
 incidental, consequential, or any other damages, resulting from the
 use or misuse of any information contained here.
 
 All statements made here are the opinions of their respective
 authors and are not necessarily endorsed by the IEEE.

 This code/text is distributed under the Perl Artistic License 
 ( http://language.perl.com/misc/Artistic.html ) 
 and may be freely used, distributed and modified.
 Retain all contribution notices and credits.
**********************************************************************
