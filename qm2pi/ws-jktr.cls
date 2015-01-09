%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Trim Size: 9.75in x 6.5in
%% Text Area: 8in (include Runningheads) x 5in
%% ws-jktr.cls   :   15-6-05
%% Class file to use with ws-jktr.tex written in Latex2E. 
%% The content, structure, format and layout of this style file is the 
%% property of World Scientific Publishing Co. Pte. Ltd. 
%% Copyright 1995, 2002 by World Scientific Publishing Co. 
%% All rights are reserved.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jktr}[1994/07/13 v1.2u Standard LaTeX document class]
%Sankaran dd 21/1/2000 for special issue and status of proofs
\@twosidetrue\@mparswitchtrue\@twocolumnfalse
\newif\if@openright
\@openrighttrue
\newif\if@restonecol
%
\newif\if@draft
%
\newdimen\draftrule
\draftrule=0pt
%
%
\DeclareOption{splissue}{\@splissuetrue}
\DeclareOption{draft}{\@drafttrue\setlength\overfullrule{5pt}\draftrule0.01pt}%

%
%\hoffset=-1.5cm
%\voffset=-0.5cm
%
\DeclareOption{final}{\setlength\overfullrule{0pt}}
%
\ExecuteOptions{a4paper,10pt,twoside,onecolumn,final}
\ProcessOptions
%
\newcommand\appendixname{Appendix}
\newcommand\abstractname{ABSTRACT}
\newcommand\bibname{References}%
%
\newcommand\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
	\space\number\day, \number\year}
\newcount\minute
\newcount\hour
\def\currenttime{%
	\minute\time
	\hour\minute
	\divide\hour60
	\the\hour:\multiply\hour60\advance\minute-\hour\the\minute}
%
\newdimen\trimheight
\newdimen\trimwidth
\newdimen\typeheight
\newdimen\typewidth
\newdimen\tempdimen
\newdimen\tablewidth
\newdimen\normaltextheight
\newbox\tempbox
\newdimen\tablewd
%%
\def\foliofont{\fontsize{8}{8}\selectfont}
\def\bibfont{\fontsize{9}{11}\selectfont}
\def\rhfont{\footnotesize\itshape{}}
\def\catchlinefont{\footnotesize}
\def\titlefont{\fontsize{10}{13}\bfseries\boldmath\selectfont\leftskip1pc plus 1fil\rightskip\leftskip}
\def\authorfont{\footnotesize}
\def\abstractfont{\footnotesize}
\let\affiliationfont\rhfont
\def\datefont{\footnotesize}
\def\sectionfont{\bfseries\boldmath\rightskip2pc plus1fill{}}
\def\subsectionfont{\bfseries\boldmath\itshape\rightskip2pc plus1fill{}}
\def\subsubsectionfont{\itshape\rightskip2pc plus1fill{}}
\def\paragraphfont{\bfseries\boldmath}
\def\subparagraphfont{\itshape}
\def\figurecaptionfont{\footnotesize}
\def\tablefont{\footnotesize}
\def\tablecaptionfont{\footnotesize}
%
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt{13}%\@xiiipt
   \abovedisplayskip6\p@\@plus4\p@\@minus2\p@
   \abovedisplayshortskip\abovedisplayskip
   \belowdisplayshortskip\abovedisplayshortskip
   \belowdisplayskip\abovedisplayskip
   \let\@listi\@listI}
\normalsize
%
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
%
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
%
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}%
\newcommand\Large{\@setfontsize\Large\@xivpt{16}}%%
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
%
\DeclareOldFontCommand{\rm}{\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\scshape}{\@nomath\sc}
\DeclareOldFontCommand{\bi}{\bfseries\itshape}{\bfseries\itshape}
\renewcommand{\rmdefault}{cmr}%
%
\DeclareMathSizes{28}{28}{25}{20}
\DeclareMathSizes{24}{24}{21}{18}
\DeclareMathSizes{22}{22}{19}{17}
\DeclareMathSizes{20}{20}{17}{15}
\DeclareMathSizes{18}{18}{15}{10}
\DeclareMathSizes{12}{11}{8}{5}
\DeclareMathSizes{11}{11}{8}{5}
\DeclareMathSizes{10}{10}{7}{5}
\DeclareMathSizes{9.5}{9}{7}{5}
\DeclareMathSizes{9}{9}{7}{5}
\DeclareMathSizes{8}{8}{6}{5}
\DeclareMathSizes{7}{7}{5}{5}
\DeclareMathSizes{6}{6}{5}{5}
\DeclareMathSizes{5}{5}{5}{5}
\def\bm#1{\mathchoice
	{\mbox{\boldmath$#1$}}%
          {\mbox{\boldmath$#1$}}%
          {\mbox{\boldmath$\scriptstyle#1$}}%
          {\mbox{\boldmath$\scriptscriptstyle#1$}}}%
%
\trimheight9.75truein
\trimwidth6.50truein
\typeheight48.1pc
\typewidth5truein
%
\setlength\parindent{1.5em}%10\p@
\setlength\headheight{6\p@}
\setlength\headsep   {19pt}
\setlength\topskip   {7\p@}
\setlength\footskip{10pt}%18
\setlength\maxdepth{4\p@}
\setlength\@maxdepth\maxdepth
\setlength\textwidth{30pc}
\setlength\textheight\typeheight
\advance\textheight-\headheight
\advance\textheight-\headsep
%\advance\textheight\topskip%Comment
\advance\textheight-3pt  %comment
\setlength\normaltextheight{\textheight}
\setlength\oddsidemargin{21mm}%.625in%60pt
\setlength\evensidemargin{\trimwidth}
\addtolength\evensidemargin{-\textwidth}
\addtolength\evensidemargin{-\oddsidemargin}
\setlength\marginparwidth{.75in}
\setlength\marginparsep{7\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{.85926in}%
\setlength\footnotesep{6\p@}%6pt
\setlength{\skip\footins}{18\p@ \@plus 5\p@ \@minus 2\p@}
\setlength\floatsep    {24\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{24\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {24\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {24\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{24\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{0\p@}
%
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}%
\renewcommand\baselinestretch{}%{}
\setlength\parskip{0\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
%
%
\def\@fnsymbol#1{\ensuremath{\ifcase#1\or *\or \dagger\or \ddagger\or
   	\mathchar "278\or \mathchar "27B\or \|\or **\or \dagger\dagger
   	\or \ddagger\ddagger \else\@ctrerr\fi}}
%
%
\def\title#1{\gdef\@title{{{#1}}}}
\def\subtitle#1{\titlefont :~#1}		%Sundar's new.cls
\newcommand\maketitle{\par
  \begingroup
   \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
        \def\@makefnmark{{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\noindent
        \@textsuperscript{\normalfont\@thefnmark}{{##1}}}%
      \newpage
      \global\@topnum\z@
      \@maketitle
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
}
\def\@maketitle{%
  \newpage
  \null
  \vspace*{-10pt}
   \vspace*{-22pt}% to have the bylines on the beginning of the page
  \@clinebuf
  \vspace*{52pt}
  \begin{center}%
	\let\footnote \thanks
  {\titlefont\@title \par}%
  \vspace*{28pt}
  \@aabuffer\par
  \end{center}%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Title %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FM & BM %%%%%%%%%%%%%%%%%%%%%%%%%%
%Updated by Doris on content layout dated 21/03/2001

\def\chead#1#2#3{\par
\thispagestyle{empty}
{\centering{%
{\titlefont JOURNAL OF KNOT THEORY AND ITS RAMIFICATIONS}\par
{\sl Vol.~#1, No.~#2 (#3)}\par
\vspace*{29pt}
\noindent {\bibfont CONTENTS}\par}}
\vspace*{10pt}}
\def\centry#1#2#3{\par\addvspace{10pt plus2pt minus2pt}
	{\rightskip4pc plus1fil
	\noindent#1\par}\par
	\vskip-\lastskip\vskip-\baselineskip
	\hbox to \hsize{\hfill#3}\par
	{\noindent\leftskip15pt{\rightskip4pc plus1fil{\it #2}\par}}\vspace*{-3pt}}
\def\cent#1{\par\addvspace{12pt plus2pt minus2pt}\rightskip4pc plus1fil
	\noindent{\bf #1}\par}
\def\ehead#1#2#3{\par
	\addvspace{10pt plus2pt minus2pt}
	{\rightskip4pc plus1fil
	\noindent{{{#1}}}\par}\par
	\vskip-\lastskip\vskip-\baselineskip
	\hbox to \hsize{\hfill#3}\par
	{\noindent\leftskip15pt{\rightskip4pc plus1fil{\it #2}\par}}\par}
\def\eehead#1#2#3{\par\addvspace{6pt plus2pt minus2pt}
	{\rightskip4pc plus1fil
	\noindent{\bf #1}\par}\par
	\vskip-\lastskip\vskip-\baselineskip
	\hbox to \hsize{\hfill#3}\par
	{\noindent\leftskip15pt{\rightskip4pc plus1fil{\it #2}\par}}\par}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Local Definitions %%%%%%%%%%%%%%%%%%%%%%
%

\def\uc#1{\uppercase{#1}} 
\newcommand{\cal}{\protect\pcal} 
\newcommand{\pcal}{\@fontswitch{\relax}{\mathcal}}
%
\def\mtb{\fboxsep=0pt\fbox{\phantom{e}}}
\def\breakhere{\par\vskip-\lastskip
			\pagebreak}
\def\forcebreak{\vadjust{\pagebreak}}
%
\def\thebepage{\thepage}
\def\theeepage{\pageref{eof}}
\def\pub#1#2#3{\par%
	\addvspace{-6pt plus2pt minus2pt}
	{\centering{
	\authorfont #1\par
	#2\par
	#3\par} 
	\par}
	\addvspace{12pt plus2pt minus2pt}}%
%

\def\@clinebuf{}
\def\catchline#1#2#3{\expandafter\def\expandafter\@clinebuf\expandafter
	{\@clinebuf\catchlinefont
	\noindent Journal of Knot Theory and Its Ramifications\par
	\noindent \copyright\ World Scientific Publishing Company\par
	}\relax\par
	}%
\def\No{No.}

%\def\and{\hbox{\lowercase{ and }}}
\def\and{\hbox{\lowercase{and }}} %elsie 14/5/98
\def\aand{\\[10pt]{\upshape{and}}\\[-3pt]}

\def\@aabuffer{}
\def\author#1{\expandafter\def\expandafter\@aabuffer\expandafter
        {\@aabuffer{\authorfont{{{#1}}}}\relax\par
        \vspace*{3pt}}}

\def\address#1{\expandafter\def\expandafter\@aabuffer\expandafter
	{\@aabuffer{\affiliationfont{#1}}\relax\par
	\vspace*{13pt}}}
%
\def\keywords#1{\par
	\vspace*{8pt}
	{\authorfont{\leftskip18pt\rightskip\leftskip
	\noindent{\it Keywords}\/:\ #1\par}}\par}

\def\ccode#1{\par		
	\vspace*{8pt}
	{\authorfont{\leftskip18pt\rightskip\leftskip
	\noindent #1\par}}\par}

%
\def\category#1#2{\par
	\vspace*{8pt}
	{\authorfont{\leftskip18pt\rightskip\leftskip
	\noindent{\it Categories}\/:\ #1:\ #2\par}}\par}
%

\newenvironment{history}{%			%Sundar's new.cls
	\addvspace{-2pt plus-2pt minus-2pt}
   \authorfont\begin{center}\vskip-\lastskip
}{%
   \end{center}
	\addvspace{15pt plus2pt minus2pt}
}

\def\email#1{\it #1\par}
\def\http#1{\it http://#1\par}
\def\url#1{\it #1\par}
\def\received#1{Received~#1\par}
\def\revised#1{Revised~#1\par}
\def\accepted#1{Accepted~#1\par}
\def\comby#1{\par\addvspace{1\baselineskip}Communicated\ by~#1\par}
%
\newenvironment{abstract}{\abstractfont\begin{center}
			  \abstractname	
			  \end{center}
\vspace*{-5pt}
\hspace*{0.3cm}
\leftskip18pt\rightskip18pt
}{%
  \par}
%
\def\@listI{\leftmargin\leftmargini
            \listparindent\parindent
            \parsep \z@\labelsep.5em
            \topsep 6.5\p@ \@plus3\p@% \@minus2\p@
            \itemsep0\p@}
%
\let\@listi\@listI
\@listi
%
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    3.5\p@ \@plus2\p@ \@minus\p@
              \parsep    \z@
              \itemsep\z@}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    3.5\p@ \@plus\p@\@minus\p@
              \parsep    \z@
             % \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep0\p@}%   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
%
\setlength\leftmargini{3pc}
\setlength\leftmarginii{2.2em}
\setlength\leftmarginiii{1.87em}
\setlength\leftmarginiv{1.7em}
\setlength\leftmarginv{1em}
\setlength\leftmarginvi{1em}
\setlength\leftmargin{\leftmargini}
\setlength\listparindent{\parindent}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\roman{enumiii}}
\renewcommand\theenumiv{\Alph{enumiv}}
\newcommand\labelenumi{(\theenumi)}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont\bfseries --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}
%
\def\enummax#1{\setbox\tempbox=\hbox{#1\hskip\labelsep}%
  \expandafter\global\csname leftmargin\romannumeral\the\@enumdepth\endcsname\wd\tempbox}
%
\def\enumerate{\@ifnextchar[{\@enumerate}{\@enumerate[\csname label\@enumctr\endcsname]}}
%
\def\@enumerate[#1]{\ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne\edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \enummax{#1}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\def\makelabel##1{\hss\llap{##1}}}\fi}
%
\let\Item\item
\newenvironment{enumeroman}{%
  \def\theenumi{\roman{enumi}}\def\theenumii{\alph{enumii}}%
  \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
		\let\item\Item
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{alphlist}{%
  \def\theenumi{\alph{enumi}}\def\theenumii{\roman{enumii}}%
  \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
		\let\item\Item
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{arabiclist}{%
	\def\theenumi{\arabic{enumi}}\def\theenumii{\alph{enumii}}
	\def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
	\let\item\Item
	\begin{enumerate}
	}{%
	\end{enumerate}}
%
\newenvironment{romanlist}{%
	\def\theenumi{\roman{enumi}}\def\theenumii{\alph{enumii}}
	\def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
	\let\item\Item
	\begin{enumerate}
	}{%
	\end{enumerate}}
%
\newenvironment{itemlist}{%
	\def\labelenumi{\labelitemi}
	\let\item\Item
	\begin{enumerate}
	}{%
	\end{enumerate}}
%
\newenvironment{unnumlist}{%
	\let\item\Item
  	\leftmargini2pc
   	\ifnum \@enumdepth >3 \@toodeep\else
      	\advance\@enumdepth \@ne
      	\list{}{\itemindent-2pc\topsep6pt
              \def\makelabel##1{\hss\llap{##1}}}%
   \fi
}{%
  \endlist}

\newenvironment{quote}
               {\list{}{\rightmargin18pt\leftmargin18pt}%
                \item[]}
               {\endlist}
%
%
\setcounter{secnumdepth}{3}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thesection      {\arabic{section}}
\renewcommand\thesubsection   {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection .\arabic{subsubsection}}
\renewcommand\theparagraph    {\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph {\theparagraph.\arabic{subparagraph}}
%
\newcommand\section{\@startsection{section}{1}{\z@}{-22pt \@plus-3pt minus-6pt}{6pt}{\sectionfont}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}{-17.5pt \@plus-3pt minus-6pt}{6pt}{\subsectionfont}}
%rsanka before 14/5/98
%\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}{-12pt \@plus-3pt minus-3pt}{.0001pt}{\subsubsectionfont}}
%elsie 14/5/98
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}{-17.5pt \@plus-3pt minus-6pt}{6pt}{\subsubsectionfont}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}{12pt \@plus -3pt}{-.5em}{\paragraphfont}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}{3.25ex \@plus1ex}{-1em}{\subparagraphfont}}
%
\def\@seccntformat#1{{\upshape{\csname the#1\endcsname.}}\hskip .5em}
%
\gdef\@author{}
%
\InputIfFileExists{psfig.sty}{}{}
\InputIfFileExists{epsf.sty}{}{}
%
\setcounter{topnumber}{3}
\def\topfraction{.98}
\setcounter{bottomnumber}{3}
\def\bottomfraction{.98}
\setcounter{totalnumber}{6}%4
\def\textfraction{.01}
\def\floatpagefraction{.98100}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.981}
\def\dblfloatpagefraction{.99}
%
%
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{6\p@}% plus3pt minus3pt}
\setlength\belowcaptionskip{-1\p@}
%
\def\FigName{figure}%
%
\newbox\captionbox
%
\long\def\@makecaption#1#2{%
  \ifx\FigName\@captype
    	\vskip\abovecaptionskip
 	\setbox\captionbox\hbox{{\figurecaptionfont#1.\unskip\ignorespaces\hskip1em#2\par}}
	\ifdim \wd\captionbox > \hsize
	{\figurecaptionfont
	#1.\unskip\ignorespaces\hskip1em#2\par}\par
	\else
	\centerline{\figurecaptionfont%
	#1.\unskip\ignorespaces\hskip1em#2}\par
	\fi
	\else
	\global\setbox\captionbox\hbox{%
		{\tablecaptionfont#1.\ignorespaces\hskip1em#2\par}}
 \fi}
%
\def\figurename{Fig.}
\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{htbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
%
\def\ArtDir{\jobname/}
\def\figurebox#1#2#3{%
  	\def\arg{#3}%
  	\ifx\arg\empty
  	{\hfill\vbox{\hsize#2\hrule\hbox to #2{%
		\vrule\hfill\vbox to #1{\hsize#2\vfill}\vrule}\hrule}\hfill}%
  	\else
   	\hbox to \hsize{\hfill{\epsfbox{\ArtDir#3.eps}}\hfill}%
  	\fi}
%
\def\PSFIG#1#2#3{\par
  {\hbox to \hsize{%
	\hfill{\psfig{file=\ArtDir#1.eps,width=#2,angle=#3}}\hfill}\par}}%
%
%%%%%%%%%
\newcounter{table}
\def\tablename{Table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{htbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
%

\long\def\tbl#1#2{%
	\parindent\z@\ignorespaces\noindent\tablecaptionfont
	\caption{#1}%
  	\par\setbox\tempbox\hbox{\tablefont #2}%
  	\tablewd\hsize\advance\tablewd-\wd\tempbox\global\divide\tablewd\tw@
	\ifdim\wd\captionbox<\wd\tempbox\centerline{\unhbox\captionbox}
	\else\leftskip\tablewd\rightskip\leftskip{\unhbox\captionbox}\par
	\fi\vskip5pt\centerline{\box\tempbox}
}%


%
\long\def\ttbl#1#2#3{%
	\parindent\z@
	\noindent
  	\tablecaptionfont
	\caption{#2}%
	\tablewd\hsize
	\advance\tablewd-#1
  	\global\divide\tablewd\tw@
	\ifdim \wd\captionbox<#1
	\centerline{\unhbox\captionbox}
	\else
  	{\leftskip\tablewd% plus1fill{}
	\rightskip\tablewd% plus1fill{}
  	\unhbox\captionbox\par}
	\fi
 	\vskip-8pt
	\centerline{#3}
}
%

\newenvironment{InTextTable}{%
 	\par\addvspace{16pt plus6pt minus6pt}%
 	\begin{center}\tablecaptionfont\noindent\ignorespaces
}{%
   	\end{center}\par\addvspace{17pt plus6pt minus6pt}}
%

%
\newenvironment{tabnote}{%
	\par\vskip5pt\footnotesize%
	\@ifnextchar[{\@tabnote}{\@tabnote[Note]}}{%
	\par\vskip-5pt}
\def\@tabnote[#1]{%
	\leftskip\tablewd\rightskip\leftskip {\it #1}\/:\ \ignorespaces}

%
\def\Hline{%		%Sundar's new.cls
  \noalign{\ifnum0=`}\fi\hrule \@height 2\arrayrulewidth \futurelet
   \@tempa\@xhline}
%
\def\x{@{\extracolsep{\fill}}}
\def\toprule{\Hline\\[-7.5pt]}
\def\colrule{\\[-7.5pt]\hline\\[-7.5pt]}
\def\TMcolrule{\\[-9.5pt]\hline\\[-9.5pt]}
\def\botrule{\\[-9pt]\Hline}
\def\crule#1{\\[-10pt]#1\\[-6pt]}

%
\setlength\arraycolsep{1.5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand{\theequation}{\thesection.\arabic{equation}}
%

\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
%
\def\bstrut{\vrule width0pt depth5pt}
\def\tstrut{\vrule width0pt height10pt}
\jot=3pt
%

\def\refstepeqcnt{\refstepcounter{equation}}
\def\eqnnum{\displaywidth\linewidth\hbox{\@eqnnum}}
%
\def\@equation{\let\topsep\abovedisplayskip\@beginparpenalty\predisplaypenalty\@endparpenalty\postdisplaypenalty
     \refstepeqcnt
     \trivlist \item[]\leavevmode
       \hbox to\linewidth\bgroup\hfill $\m@th% $
       \displaystyle}%
\def\end@equation{$\hfill\eqnnum\egroup\endtrivlist}
%
\renewenvironment{eqnarray}{%
   \stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to\displaywidth\bgroup
       \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne\hskip \tw@\arraycolsep \hfil${##}$\hfil
      &\global\@eqcnt\tw@ \hskip \tw@\arraycolsep
         $\displaystyle{##}$\hfil\tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
         \tabskip\z@skip
      \cr}
        {%
      \@@eqncr
      \egroup
      \global\advance\c@equation\m@ne
   $$\global\@ignoretrue
}
%
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule height0pt depth0pt \@width.2\columnwidth
  \kern2.6\p@}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
     \@makefnmark#1}
%
\def\thefootnote{\alph{footnote}}
\def\@makefnmark{{$^{\rm \@thefnmark}$}}
%
%
\mark{{}{}}
%
\def\ps@plain{%
     \let\@mkboth\@gobbletwo
     \let\@oddhead\@empty
     \def\@oddfoot{\hfill\mbox{\lower12pt\hbox{\foliofont\thepage}}\hfill}%
     \let\@evenhead\@empty
     \let\@evenfoot\@oddfoot}
%
\def\RightMark{}
%
\def\ps@headings{%
    \let\@oddfoot\@empty
    \let\@evenfoot\@empty
    \def\@evenhead{{\foliofont \thepage}\hspace*{12pt}{\rhfont\leftmark}\hfill}%
    \def\@oddhead{\hfill{\rhfont\rightmark}\hspace*{12pt}{\foliofont\thepage}}%
    \let\@mkboth\markboth
    \def\authormark##1{\markboth{##1}{\RightMark}}%
    \def\chaptermark##1{\gdef\RightMark{##1}\markright{##1}}}%
    %\def\sectionmark##1{\gdef\RightMark{##1}\markright{##1}}}%
%
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\rlap{\foliofont \thepage}\hfill{\rhfont\leftmark}\hfill}%
    \def\@oddhead{\hfill{\rhfont\rightmark}\hfill{\foliofont\thepage}}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble}
%
\def\ps@pblind{%
	\let\@mkboth\@gobbletwo
	\def\@evenhead{}%
	\def\@oddhead{}
	\def\@oddfoot{\hfill\mbox{\lower8pc\hbox{}}\hfill}
   \let\@evenfoot\@oddfoot}
%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
\def\@opargbegintheorem#1#2#3{\par\addvspace{6pt plus3pt minus2pt}%
	\def\@tempa{#3}%
	\noindent{\bf #1 #2 \ifx\@tempa\empty\unskip\else\unskip\ (#3).\fi\hskip.5em}\csname#1font\endcsname\ignorespaces
%	\noindent{\bf #2 \ifx\@tempa\empty\unskip\else\unskip: #3\fi\hskip1em}\it
\ignorespaces}

%
\def\@endtheorem{\par\addvspace{6pt plus3pt minus2pt}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\let\Theoremfont\itshape
\let\Lemmafont\itshape
\let\Corollaryfont\itshape
\let\Propositionfont\itshape
\let\Conjecturefont\itshape
\let\Definitionfont\upshape%
\let\Examplefont\upshape
\let\Remarkfont\upshape

%
\let\Theoremheadfont\bfseries
\let\Corollaryheadfont\bfseries
\let\Propositionheadfont\bfseries
\let\Lemmaheadfont\bfseries
\let\Definitionheadfont\bfseries
\def\Exampleheadfont{\bfseries}
\def\Remarkheadfont{\bfseries}
%
\def\@begintheorem#1#2#3{\par\addvspace{8pt plus3pt minus2pt}%
              \noindent{\csname#1headfont\endcsname#1\ \ignorespaces#3 #2.}%
              \csname#1font\endcsname\hskip6pt\ignorespaces}
\def\@endtheorem{\par\addvspace{8pt plus3pt minus2pt}\@endparenv}
%

%%Theorem 1.1   Lemma 1.2
\newtheorem{theorem}{Theorem}[section]     
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{example}[theorem]{Example}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{notation}[theorem]{Notation}
\newtheorem{question}[theorem]{Question}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{conjecture}[theorem]{Conjecture}
%

\newif\iflogo 
\def\prbox{\par
	\vskip-\lastskip\vskip-\baselineskip\hbox to \hsize{\hfill\fboxsep0pt\fbox{\phantom{\vrule width5pt height5pt depth0pt}}}\global\logofalse}

%
\newenvironment{proof}{%
\par\addvspace{12pt plus3pt minus3pt}\global\logotrue%
\noindent{\bf Proof.\hskip.5em}\ignorespaces}{%
	\par\iflogo\vskip-\lastskip
	\vskip-\baselineskip\prbox\par
	\addvspace{12pt plus3pt minus3pt}\fi}
%

\newif\if@cghi
\def\cite{\@cghitrue\@ifnextchar [{\@tempswatrue\@citex}{\@tempswafalse\@citex[]}}
\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m}%
     \edef\@citeb{\expandafter\@firstofone\@citeb}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue\@latex@warning
       {Citation `\@citeb' on page \thepage \space undefined}}%
     {\hbox{\csname b@\@citeb\endcsname}}}}{#1}}
%
%
\def\@refcitex[#1]#2{\if@filesw\immediate\write\@auxout 
	{\string\citation{#2}}\fi 
\def\@citea{}\@refcite{\@for\@citeb:=#2\do 
	{\@citea\def\@citea{, }\@ifundefined 
	{b@\@citeb}{{\bf ?}\@warning 
	{Citation `\@citeb' on page \thepage \space undefined}} 
	\hbox{\csname b@\@citeb\endcsname}}}{#1}} 
 \def\@refcite#1#2{{#1\if@tempswa\typeout 
        {WSPC warning: optional citation argument 
	ignored: `#2'} \fi}} 
 \def\refcite{\@ifnextchar[{\@tempswatrue 
	\@refcitex}{\@tempswafalse\@refcitex[]}}
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Bibliography %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newdimen\bibindent
\bibindent=2em
\def\@biblabel#1{[#1]}
\newenvironment{thebibliography}[1]
     {\section*{\bibname}%\markright{References}
	\bibfont%
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
	    \labelsep6pt%.33em
            \advance\leftmargin\labelsep
	    \itemsep0pt\parsep0pt
            \usecounter{enumiv}%
            \renewcommand\theenumiv{\arabic{enumiv}}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Appendix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcounter{appendix}
\newcommand\appendix{\par
  	\refstepcounter{appendix}
	\setcounter{section}{0}
        \setcounter{equation}{0}
	\@addtoreset{equation}{section}
  \renewcommand\thesection{\appendixname\ \Alph{section}}%
  \renewcommand\thesubsection{\Alph{section}.\arabic{subsection}}
  \renewcommand\theequation{\Alph{section}.\arabic{equation}} }
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Appendix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Trim Marks %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\draftnote{\today\quad\currenttime\quad WSPC/INSTRUCTION FILE\qquad\jobname}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ss %%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\cropmarks{\nointerlineskip%
     \vbox to 0pt{\vskip-8.6pt
	\parindent0pt\hspace*{6pt}\draftnote
     \par\advance\trimheight by 2pc
     \vbox to \trimheight{\offinterlineskip\parindent0pt\vskip-2pc
     \hbox to \trimwidth{\raise2.6pc\hbox{\vrule height2pc width0.3pt}\raisebox{2pc}
   {\hspace*{-2.6pc}\vrule width2pc height0.3pt}\hfill\raisebox{2pc}
   {\vrule width2pc height0.3pt}\hspace*{-2.6pc}\raise2.6pc\hbox{\vrule height2pc width0.3pt}}\vfill
     \hbox to \trimwidth{\lower1.2pc\hbox{\vrule height2pc width0.3pt}\raisebox{1.4pc}
        {\hspace*{-2.6pc}\vrule width2pc height0.3pt}\hfill 
    \lower1.2pc\hbox{\vrule height2pc width0.3pt}\rlap{\hspace*{0.6pc}\raisebox{1.4pc}{\vrule width2pc height0.3pt}}}}}
     \vbox to 0pt{\offinterlineskip\parindent0pt\vskip\topmargin%\vskip1.3pt
     \tempdimen\normaltextheight
     \advance\tempdimen24pt
     \moveright\@themargin
     \vbox to \tempdimen{\hrule height\draftrule 
     \vbox to 0pt{\vskip\headheight\vskip\headsep%\vskip3pt
                \vrule height\draftrule width\textwidth}%
      \hbox to \textwidth{\vrule width\draftrule \hfill\vrule height\tempdimen width\draftrule}%
           \hrule height\draftrule}}}%%
\def\xcropmarks{\nointerlineskip%
     \vbox to 0pt{\vskip-8.6pt
	\parindent0pt\hspace*{6pt}\draftnote
     \par\advance\trimheight by 2pc
     \vbox to \trimheight{\offinterlineskip\parindent0pt\vskip-2pc
     \hbox to \trimwidth{\raise2.6pc\hbox{\vrule height2pc width0.3pt}\raisebox{2pc}
   {\hspace*{-2.6pc}\vrule width2pc height0.3pt}\hfill\raisebox{2pc}
   {\vrule width2pc height0.3pt}\hspace*{-2.6pc}\raise2.6pc\hbox{\vrule height2pc width0.3pt}}\vfill
     \hbox to \trimwidth{\lower1.2pc\hbox{\vrule height2pc width0.3pt}\raisebox{1.4pc}
        {\hspace*{-2.6pc}\vrule width2pc height0.3pt}\hfill 
    \lower1.2pc\hbox{\vrule height2pc width0.3pt}\rlap{\hspace*{0.6pc}\raisebox{1.4pc}{\vrule width2pc height0.3pt}}}}}
     \vbox to 0pt{\offinterlineskip\parindent0pt\vskip\topmargin%\vskip1.3pt
     \tempdimen\normaltextheight
     \advance\tempdimen27pt
     \moveright\@themargin
     \vbox to \tempdimen{\hrule height\draftrule 
     \vbox to 0pt{\vskip\headheight\vskip\headsep%\vskip3pt
                \vrule height\draftrule width\textwidth}%
      \hbox to \textwidth{\vrule width\draftrule \hfill\vrule height\tempdimen width\draftrule}%
           \hrule height\draftrule}}}%%
%
\let\trimmarks\cropmarks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ss %%%%%%%%%%%%%%%%%%%%%%%%%%
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Output Routine %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\@outputpage{%
\begingroup           % the \endgroup is put in by \aftergroup
  \let \protect \noexpand
  \@resetactivechars
  \let\-\@dischyph
  \let\'\@acci\let\`\@accii\let\=\@acciii
  \let\\\@normalcr
  \let\par\@@par          %% 15 Sep 87
  \shipout \vbox{%
    \set@typeset@protect
    \aftergroup \endgroup
    \aftergroup \set@typeset@protect
                                % correct? or just restore by ending
                                % the group?
  \if@specialpage
    \global\@specialpagefalse\@nameuse{ps@\@specialstyle}%
  \fi
  \if@twoside
    \ifodd\count\z@ \let\@thehead\@oddhead \let\@thefoot\@oddfoot
         \let\@themargin\oddsidemargin
    \else \let\@thehead\@evenhead
       \let\@thefoot\@evenfoot \let\@themargin\evensidemargin
    \fi
  \fi
  \reset@font
  \normalsize
  \baselineskip\z@skip \lineskip\z@skip \lineskiplimit\z@
    \@begindvi\trimmarks
    \vskip \topmargin
    \moveright\@themargin \vbox {%
      \setbox\@tempboxa \vbox to\headheight{%
        \vfil
        \color@hbox
          \normalcolor
          \hb@xt@\textwidth {%
            \let \label \@gobble
            \let \index \@gobble
            \let \glossary \@gobble %% 21 Jun 91
            \@thehead
            }%
        \color@endbox
        }%                        %% 22 Feb 87
      \dp\@tempboxa \z@
      \box\@tempboxa
      \vskip \headsep
      \box\@outputbox
      \baselineskip \footskip
      \color@hbox
        \normalcolor
        \hb@xt@\textwidth{%
          \let \label \@gobble
          \let \index \@gobble      %% 22 Feb 87
          \let \glossary \@gobble   %% 21 Jun 91
          \@thefoot
          }%
      \color@endbox
      }%
    }%
\global \@colht \textheight
\stepcounter{page}%
\let\firstmark\botmark
}

%
\def\enddocument{%
   \label{eof}
   \@enddocumenthook
   \@checkend{document}%
   \clearpage
   \begingroup
     \if@filesw
       \immediate\closeout\@mainaux
       \let\@setckpt\@gobbletwo
       \let\@newl@bel\@testdef
       \@tempswafalse
       \makeatletter \input\jobname.aux
     \fi
     \@dofilelist
     \ifdim \font@submax >\fontsubfuzz\relax
       \@font@warning{Size substitutions with differences\MessageBreak
                  up to \font@submax\space have occured.\@gobbletwo}%
     \fi
     \@defaultsubs
     \@refundefined
     \if@filesw
       \ifx \@multiplelabels \relax
         \if@tempswa
           \@latex@warning@no@line{Label(s) may have changed.
               Rerun to get cross-references right}%
         \fi
       \else
         \@multiplelabels
       \fi
     \fi
   \endgroup
   \deadcycles\z@\@@end}
%
\pagestyle{headings}
\pagenumbering{arabic} 
\onecolumn
\frenchspacing
\flushbottom
\def\sloppy{\tolerance=100000\hfuzz=\maxdimen \vfuzz=\maxdimen}
\sloppy
\vbadness=12000
\hbadness=12000
\usepackage{amsfonts}
\usepackage[figuresright]{rotating}  
\usepackage{amssymb}
\usepackage{amsmath}
\endinput
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End of file %%%%%%%%%%%%%%%%%%%%%%%%%%%


