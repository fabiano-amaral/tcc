%%
%% This is file `ufescomp.cls',
%% generated with the docstrip utility.
%%
%% This is the `ufescomp' document class used for composition of LaTeX
%% monographs (undergraduate course, master and PhD thesis, and PhD
%% qualifying exams) satisfying the requirements of the Departament
%% of Computing and Electronics Courses in Computing at the Federal
%% University of Espirito Santo.
%% 
%% Copyright (C) 2016 Luis Otavio Rigo Junior - DCEL / UFES
%% 
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License version 3 as
%% published by the Free Software Foundation.
%% 
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%% GNU General Public License version 3 for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% version 3 along with this package (see COPYING file).
%% If not, see <http://www.gnu.org/licenses/>.
%% 
%% Author(s): Luis Otavio Rigo Junior
%% 
%% \CheckSum{1416}
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\def\filename{ufescomp.dtx}
\def\fileversion{v1.0}
\def\filedate{2016/09/01}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ufescomp}[\filedate\ \fileversion\ UFES Monographs, Dissertations and Thesis]
\LoadClass[12pt,a4paper,oneside]{book}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{hyphenat}
\RequirePackage{lastpage}
\RequirePackage[english,brazil]{babel}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{eqparbox}
\RequirePackage{ltxcmds}
\RequirePackage{titlesec}
\RequirePackage[a4paper,bindingoffset=0.0cm,vcentering=true,%
top=3.0cm,bottom=2.0cm,left=3.0cm,right=2.0cm]{geometry}
\def\UfesTeX{{\rm C\kern-.05em{\sc o\kern-.025em p\kern-.025em
p\kern-.025em e}}\kern-.08em
T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX\spacefactor1000}
\newboolean{maledoc}
\setboolean{maledoc}{false}
\DeclareOption{lic}{%
  \newcommand{\@degree}{Lic.}
  \newcommand{\@degreename}{Licenciatura}
  \newcommand{\local@degname}{Licenciado}
  \newcommand{\foreign@degname}{Licensee}
  \newcommand\local@doctype{Monografia}
  \newcommand\foreign@doctype{Monograph}
  \newcommand{\local@typeprogram}{Curso}
  \newcommand{\foreign@typeprogram}{Course}
  \newcommand{\@typeprogramname}{Gradua{\c c}{\~ a}o}
}
\DeclareOption{bach}{%
  \newcommand{\@degree}{Bach.}
  \newcommand{\@degreename}{Bacharelado}
  \newcommand{\local@degname}{Bacharel}
  \newcommand{\foreign@degname}{Bachelor}
  \newcommand\local@doctype{Monografia}
  \newcommand\foreign@doctype{Monograph}
  \newcommand{\local@typeprogram}{Curso}
  \newcommand{\foreign@typeprogram}{Course}
  \newcommand{\@typeprogramname}{Gradua{\c c}{\~ a}o}
}
\DeclareOption{msc}{%
  \newcommand{\@degree}{M.Sc.}
  \newcommand{\@degreename}{Mestrado}
  \newcommand{\local@degname}{Mestre}
  \newcommand{\foreign@degname}{Master}
  \newcommand\local@doctype{Disserta{\c c}{\~ a}o}
  \newcommand\foreign@doctype{Dissertation}
  \newcommand{\local@typeprogram}{Programa}
  \newcommand{\foreign@typeprogram}{Program}
  \newcommand{\@typeprogramname}{Mestrado}
}
\DeclareOption{dscexam}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doutorado}
  \newcommand{\local@degname}{Doutor}
  \newcommand{\foreign@degname}{Doctor}
  \setboolean{maledoc}{true}
  \newcommand\local@doctype{Exame de Qualifica{\c c}{\~ a}o}
  \newcommand\foreign@doctype{Qualifying Exam}
  \newcommand{\local@typeprogram}{Programa}
  \newcommand{\foreign@typeprogram}{Program}
  \newcommand{\@typeprogramname}{Mestrado}
}
\DeclareOption{dsc}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doutorado}
  \newcommand{\local@degname}{Doutor}
  \newcommand{\foreign@degname}{Doctor}
  \newcommand\local@doctype{Tese}
  \newcommand\foreign@doctype{Thesis}
  \newcommand{\local@typeprogram}{Programa}
  \newcommand{\foreign@typeprogram}{Program}
  \newcommand{\@typeprogramname}{Mestrado}
}
\DeclareOption{numbers}{%
  \PassOptionsToPackage{numbers}{natbib}
}
\onehalfspacing
\DeclareOption{doublespacing}{%
  \doublespacing
}
\ProcessOptions\relax

\newcommand\curso[1]{%
    {\global\def\local@coursename{#1}}
}
\renewcommand\title[1]{%
    \global\def\local@title{#1}%
}
\newcommand\tituloingles[1]{%
  \global\def\foreign@title{#1}%
}
\newcount\@advisor\@advisor0
\newcommand\orientador[4]{%
  \global\@namedef{UfesAdvisor:\expandafter\the\@advisor}{\bf #1\ #4\ #2\ #3}
  \global\@namedef{UfesAdvisorTitle:\expandafter\the\@advisor}{#1}
  \global\@namedef{UfesAdvisorName:\expandafter\the\@advisor}{#2}
  \global\@namedef{UfesAdvisorSurname:\expandafter\the\@advisor}{#3}
  \global\@namedef{UfesAdvisorDegree:\expandafter\the\@advisor}{#4}
  \global\advance\@advisor by 1
  \ifnum\@advisor>1
    \renewcommand\local@advisorsstring{Orientador}
    \renewcommand\foreign@advisorsstring{Advisors}
    \renewcommand\local@advisorstring{Orientador}
    \renewcommand\foreign@advisorstring{Advisor}
  \fi
}
\newcount\@examiner\@examiner0
\newcommand\examinador[4]{%
  \global\@namedef{UfesExaminer:\expandafter\the\@examiner}{\bf #1\ #4\ #2\ #3}
  \global\advance\@examiner by 1
}
\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}
\renewcommand\date[3]{%
  \day=#1
  \month=#2
  \year=#3
}
\newcommand\local@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}

\newcommand\foreign@monthname{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi}
\titleformat{\chapter}
  {\bf}{\Huge {\thechapter}}
  {10pt}{\Huge}

\newcounter{keywords}
\newcommand\palavrachave[1]{%
  \global\@namedef{UfesKeyword:\expandafter\the\c@keywords}{#1}
  \global\addtocounter{keywords}{1}
}
\newcounter{foreignkeywords}
\newcommand\palavrachaveingles[1]{%
  \global\@namedef{UfesForeignKeyword:\expandafter\the\c@foreignkeywords}{#1}
  \global\addtocounter{foreignkeywords}{1}
}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}
  \setcounter{page}{2}
%  \thispagestyle{empty}
  \ifthenelse{\boolean{maledoc}}{}{\makecatalog}%
  \clearpage
%  \thispagestyle{empty}
  \makefrontpage}
\renewcommand\mainmatter{%
  \ufescomp@mainBegin
  \cleardoublepage
  \@mainmattertrue
%  \thispagestyle{empty}
  \pagenumbering{arabic}
%  \setcounter{page}{10}
  }
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi}

\renewcommand\maketitle{%
  \ltx@ifpackageloaded{hyperref}{\ufescomp@hypersetup}{}%
  \begin{titlepage}
  %\begin{flushleft}
  %\vspace*{0.5mm}
  %\setlength\baselineskip{0pt}
  %\setlength\parskip{1mm}
  %\makebox[10mm][c]{\hspace{1cm}\includegraphics[height=1in]{ufes-logo}}
  %\end{flushleft}
  %\vspace{1.05cm}
  \begin{center}
  \nohyphens{\MakeUppercase{\@authname\ \@authsurn}}\par
  \vspace*{6cm}
  \nohyphens{\MakeUppercase{\Large \bf \local@title}}\par
  \end{center}
  \vspace*{2.1cm}
  \begin{flushright}
  \begin{minipage}{8.45cm}
	\sloppy\nohyphens{Anteprojeto para o Trabalho de Conclusão de Curso da disciplina Projeto de Graduação I do Curso Engenharia de Computação da Universidade Federal do Espírito Santo.}
  \end{minipage}\par
  \vspace*{7.5mm}
  \nohyphens{%
  \begin{tabularx}{8.45cm}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
    \local@advisorsstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname UfesAdvisorName:\the\count1%
        \expandafter\endcsname\expandafter\space%
        \csname UfesAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@%
        \expandafter&\expandafter\space%
        \csname UfesAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname UfesAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}}\par
  \end{flushright}
  \vspace*{\fill}
  \begin{center}
  \MakeUppercase{\local@cityname}\par
  \number\year
  \end{center}
  \end{titlepage}
  \global\let\maketitle\relax%
  \global\let\and\relax}

\newcommand\makecatalog{%
  \vspace*{\fill}
  \begin{center}
    \setlength{\fboxsep}{5mm}
    \framebox[120mm][c]{\makebox[5mm][c]{}%
      \begin{minipage}[c]{105mm}
      \setlength{\parindent}{5mm}
      \noindent\sloppy\nohyphens\@authsurn,
      \nohyphens\@authname\par
      \nohyphens{\local@title/\@authname\ \@authsurn. -- \number\year.}\par
      \pageref{front:pageno},\pageref{LastPage} f.\par
      % There is an issue here. When the last entry must be split between lines,
      % the spacing between it and the next paragraph becomes smaller.
      % Should we manually introduce a fixed space? But how could we know that
      % a name was split? Is this happening yet?
      \vspace{5mm}
      \nohyphens{%
      \begin{tabularx}{100mm}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
        \local@advisorsstring: &
        \count1=0
        \toks@={}
        \@whilenum \count1<\@advisor \do{%
        \ifcase\count1 % same as \ifnum0=\count1
          \toks@=\expandafter{\csname UfesAdvisorName:\the\count1%
          \expandafter\endcsname\expandafter\space%
          \csname UfesAdvisorSurname:\the\count1\endcsname\\}
        \else
          \toks@=\expandafter\expandafter\expandafter{%
            \expandafter\the\expandafter\toks@
            \expandafter&\expandafter\space
            \csname UfesAdvisorName:\the\count1\expandafter\endcsname%
            \expandafter\space\csname UfesAdvisorSurname:\the\count1\endcsname\\
          }%
        \fi
        \advance\count1 by 1}
        \the\toks@
      \end{tabularx}}\par
      \nohyphens{\local@doctype\ ({\MakeLowercase\@degreename}) --
      Universidade Federal do Espírito Santo, \local@campusname.}\par
      \vspace{5mm}
      \count1=0
      \count2=1
      \nohyphens{\@whilenum \count1<\value{keywords} \do {%
        \number\count2. \csname UfesKeyword:\the\count1 \endcsname.
        \advance\count1 by 1
        \advance\count2 by 1}
      I. \csname UfesAdvisorSurname:0\endcsname,%
      \ \csname UfesAdvisorName:0\endcsname%
      \ifthenelse{\@advisor>1}{\ \emph{et~al.}{}}.
      II. \local@universityname, \local@campusname.
      III. T{\' i}tulo.}
    \end{minipage}}
  \end{center}}

\newcommand\makefrontpage{%
  \begin{center}
    {\MakeUppercase{\bf \@authname\ \@authsurn}}\par
    \vspace*{10mm}
    \sloppy\nohyphens{\bf \MakeUppercase\local@title}\par
  \end{center}\par
  \vspace*{\fill}
  \begin{flushright}
    \begin{minipage}[c]{90mm}
  \sloppy\nohyphens{Anteprojeto para o Trabalho de Conclusão de Curso da disciplina Projeto de Graduação I do Curso Engenharia de Computação da Universidade Federal do Espírito Santo.}\par
	\vspace*{5mm}
	Aprovada em \number\day\ de\ \MakeLowercase{\local@monthname}\ de\ \number\year.\par
    \end{minipage}
  \end{flushright}
  \vspace*{\fill}
  \begin{flushright}
    \begin{minipage}[c]{90mm}
        \noindent\MakeUppercase{\bf Comiss{\~ a}o Examinadora}\par
	\count1=0
        \@whilenum \count1<\@advisor \do {
            \vskip23\p@ \baselineskip12pt
            {\hrulefill}\\
            {\ \ \ \csname UfesAdvisor:\the\count1 \endcsname\ \ \ }\\
            {\bf \local@advisorstring}\\
	    \advance\count1 by 1}
	\count1=0
        \@whilenum \count1<\@examiner \do {
            \vskip23\p@ \baselineskip12pt
            {\hrulefill}\\
            {\ \ \ \csname UfesExaminer:\the\count1 \endcsname\ \ \ }\\
	    \advance\count1 by 1}
    \end{minipage}
  \end{flushright}
  \vspace*{\fill}}

\newcommand\ufescomp@hypersetup{%
\begingroup
  % changes to \toks@ and \count@ are kept local;
  % it's not necessary for them, but it is usually the case
  % for \count1, because the first ten counters are written
  % to the DVI file, thus you got lucky because of PDF output
  \toks@={}% in this special case not necessary
  \count@=0 %
  \@whilenum\count@<\value{keywords}\do{%
    % * a keyword separator is not necessary,
    %    if there is just one keyword
    % * \csname UfesKeyword:\the\count@\endcsname must be expanded
    %    at least once, to get rid of the loop depended \count@
    \ifcase\count@ % same as \ifnum0=\count@
      \toks@=\expandafter{\csname UfesKeyword:\the\count@\endcsname}%
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter;\expandafter\space
        \csname UfesKeyword:\the\count@\endcsname
      }%
    \fi
    \advance\count@ by 1 %
  }%
  \edef\x{\endgroup
    \noexpand\hypersetup{%
      pdfkeywords={\the\toks@}%
    }%
  }%
\x
\hypersetup{%
  pdfauthor={\@authname\ \@authsurn},
  pdftitle={\local@title},
  pdfsubject={\local@doctype\ de \@degreename\ em \local@coursename\ da UFES},
  pdfcreator={LaTeX with UfesTeX toolkit},
  breaklinks={true},
  raiselinks={true},
  pageanchor={true},
}}

\newcommand\dedicatoria[1]{
  \gdef\@dedic{#1}
  \cleardoublepage
%  \thispagestyle{empty}
  \vspace*{\fill}
  \begin{flushright}
    \begin{minipage}[l]{110mm}
      \raggedleft \normalsize \@dedic
    \end{minipage}
  \end{flushright}}

\newcommand\epigrafe[3]{
  \gdef\@epig{#1}
  \gdef\@epigname{#2}
  \gdef\@epigyear{#3}
  \cleardoublepage
%  \thispagestyle{empty}
  \vspace*{\fill}
  \begin{flushright}
    \begin{minipage}[l]{110mm}
      \raggedleft \normalsize \@epig\par
      \flushright \@epigname\ (\@epigyear)
    \end{minipage}
  \end{flushright}}

\newenvironment{agradecimentos}{%
  \cleardoublepage
%  \thispagestyle{empty}
  \noindent{\bf \large Agradecimentos}\par
  \vspace{1cm}
  \noindent}{\par
  \noindent}{\vspace*{\fill}}

\newenvironment{abstract}{%
  \clearpage
%  \thispagestyle{empty}
  \begin{center}
    \MakeUppercase{\bf \large \local@title}
  \end{center}
  \noindent}{\par\noindent
  Palavras-chave:
  \count1=0
  \nohyphens{\@whilenum \count1<\value{keywords} \do {%
    \csname UfesKeyword:\the\count1\endcsname.
  \advance\count1 by 1}}
  \vspace*{\fill}}

\newenvironment{foreignabstract}{%
  \clearpage
%  \thispagestyle{empty}
  \begin{otherlanguage}{english}
    \begin{center}
      \MakeUppercase{\bf \large \foreign@title}
    \end{center}
    \noindent}{\par\noindent
    Keywords:
    \count1=0
    \nohyphens{\@whilenum \count1<\value{foreignkeywords} \do {%
      \csname UfesForeignKeyword:\the\count1\endcsname.
    \advance\count1 by 1}}
  \end{otherlanguage}
  \vspace*{\fill}}

\renewcommand\listoffigures{%
  \clearpage
%  \thispagestyle{empty}
  \ufescomp@hasLof
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
}

\renewcommand\listoftables{%
   \clearpage
%  \thispagestyle{empty}
   \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
}

\newcommand\printlosymbols{%
\renewcommand\glossaryname{\listsymbolname}%
\@input@{\jobname.los}}
\def\makelosymbols{%
  \newwrite\@losfile
  \immediate\openout\@losfile=\jobname.syx
  \def\symbl{\@bsphack\begingroup
             \@sanitize
             \@wrlos}\typeout
  {Writing index of symbols file \jobname.syx}%
  \let\makelosymbols\@empty
}
\@onlypreamble\makelosymbols
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2}{\thepage}}%
    \endgroup
    \@esphack}}}

\newcommand\printloabbreviations{%
\renewcommand\glossaryname{\listabbreviationname}%
\@input@{\jobname.lab}}
\def\makeloabbreviations{%
  \newwrite\@labfile
  \immediate\openout\@labfile=\jobname.abx
  \def\abbrev{\@bsphack\begingroup
              \@sanitize
              \@wrlab}\typeout
  {Writing index of abbreviations file \jobname.abx}%
  \let\makeloabbreviations\@empty
}
\@onlypreamble\makeloabbreviations
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2}{\arabic{page}}}%
    \endgroup
    \@esphack}}}
\AtBeginDocument{%
  \ltx@ifpackageloaded{hyperref}{
    \def\ufescomp@bibEnd{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:end}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\ufescomp@bibBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:begin}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\ufescomp@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}{page.\roman{page}}{}}}}%
    \def\ufescomp@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}{page.\roman{page}}{}}}}%
  }{%
    \def\ufescomp@bibEnd{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:end}{{}{\arabic{page}}{}}}}%
    \def\ufescomp@bibBegin{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:begin}{{}{\arabic{page}}{}}}}%
    \def\ufescomp@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}}}}%
    \def\ufescomp@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}}}}%
  }%
}
\newdimen\bibindent%
\setlength\bibindent{1.5em}%
\renewenvironment{thebibliography}[1]%
     {\onehalfspacing%
      \chapter*{\bibname}%
      \addcontentsline{toc}{chapter}{\bibname}%
      \ufescomp@bibBegin
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\setlength{\labelwidth}{0ex}%
            \setlength{\leftmargin}{9.0ex}%
            \setlength{\itemindent}{-9.0ex}%
            \advance\leftmargin\labelsep%
            \@openbib@code%
            \usecounter{enumiv}%
            \let\p@enumiv\@empty%
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy%
      \clubpenalty4000%
      \@clubpenalty \clubpenalty%
      \widowpenalty4000%
      \sfcode`\.\@m}%
     {\def\@noitemerr%
       {\@latex@warning{Empty `thebibliography' environment}}%
       \ufescomp@bibEnd
      \endlist}
\newenvironment{theglossary}{%
  \if@twocolumn%
    \@restonecoltrue\onecolumn%
  \else%
    \@restonecolfalse%
  \fi%
  \@mkboth{\MakeUppercase\glossaryname}%
  {\MakeUppercase\glossaryname}%
  \chapter*{\glossaryname}%
  \addcontentsline{toc}{chapter}{\glossaryname}
  \list{}
  {\setlength{\listparindent}{0in}%
   \setlength{\labelwidth}{1.0in}%
   \setlength{\leftmargin}{1.5in}%
   \setlength{\labelsep}{0.5in}%
   \setlength{\itemindent}{0in}}%
   \sloppy}%
  {\if@restonecol\twocolumn\fi%
\endlist}
\renewenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  \parindent\z@
  \addcontentsline{toc}{chapter}{\indexname}
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\glossaryname{Glossary}
\newcommand\listabbreviationname{Lista de Abreviaturas}
\newcommand\listsymbolname{Lista de S{\' i}mbolos}
\newcommand\local@advisorstring{Orientador}
\newcommand\foreign@advisorstring{Advisor}
\newcommand\local@advisorsstring{Orientador}
\newcommand\foreign@advisorsstring{Advisors}
\ifthenelse{\boolean{maledoc}}{%
  \newcommand\local@approvedname{Examinado por}%
}{%
  \newcommand\local@approvedname{Examinada por}%
}
\newcommand\local@universityname{Universidade Federal do Esp{\' i}rito Santo}
\newcommand\local@deptstring{\local@typeprogram}
\newcommand\foreign@deptstring{\foreign@typeprogram}
\newcommand\local@campusname{Campus de S{\~ a}o Mateus}
\newcommand\local@cityname{S{\~ a}o Mateus}
\newcommand\local@statename{ES}
\newcommand\local@countryname{Brasil}
\newcommand\frontcover@maintext{
  \sloppy\nohyphens{\local@doctype\ de \@degreename\
  \ifthenelse{\boolean{maledoc}}{apresentado}{apresentada}
  ao \local@typeprogram\ de \@degreename\ em \local@coursename, 
  do \local@campusname, da \local@universityname, como parte dos requisitos
  necess{\' a}rios {\` a} obten{\c c}{\~ a}o do t{\' i}tulo de
  \local@degname\ em \local@coursename.}
}
\newcommand\frontpage@bottomtext{%
  \begin{center}
  {\MakeUppercase{\local@cityname, \local@statename\ -- \local@countryname}}\par
  {\MakeUppercase\local@monthname\ DE \number\year}
  \end{center}%
}
%% 
%%
%% End of file `ufescomp.cls'.
