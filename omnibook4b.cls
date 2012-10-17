\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{omnibook4b}[01/10/2011 Classe para Capítulo de Livro, versão 4b]
\ProcessOptions \relax
\typeout{**************************************************************************}
\typeout{*** FORMATO PARA CAPÍTULO DE LIVRO - OMNIPAX EDITORA LTDA                 }
\typeout{*** baseado no formato article                                            }
\typeout{*** versão 4b  de 01/10/2011                                              }
\typeout{**************************************************************************}
\LoadClass[A5paper,twoside,10pt]{article}
\usepackage{geometry}
\geometry{twoside,a5paper,tmargin=2cm,bmargin=2cm,lmargin=2.5cm,rmargin=1.8cm,headsep=5mm,footskip=5mm}
\usepackage[latin1]{inputenc}
\usepackage[brazil,portuges]{babel}
\usepackage[T1]{fontenc}
\usepackage{ae,aecompl}
\RequirePackage{amsfonts,amssymb,amsmath,bm,paralist,theorem,color}
\RequirePackage{graphicx}
\RequirePackage{epstopdf}
\usepackage{booktabs}
\usepackage{multirow}
\usepackage{rotating}
\RequirePackage[singlelinecheck=false,figurename=Figura,labelsep=period,skip=2pt,center]{caption}
\setlength{\captionmargin}{10pt}
\renewcommand{\captionfont}{\small}
\RequirePackage{subfigure}
\usepackage[hang]{footmisc}
\setlength{\footnotemargin}{1em}
\RequirePackage{fancyhdr}
\usepackage{pbox}
\usepackage{array}
\usepackage{pifont}
\newboolean{@secondauthors}
\newboolean{@secondaffiliation}
\newboolean{@secondcountry}
\newboolean{@thirdauthors}
\newboolean{@thirdaffiliation}
\newboolean{@thirdcountry}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{1pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\raggedbottom
\addtolength{\topskip}{0pt plus 10pt}
\def\ps@paginarosto{%
\fussy
     \let\@oddhead\@empty
     \let\@evenhead\@empty
     \def\@evenfoot{\bfseries\tiny\fontfamily{phv}\selectfont \hfill}
     \let\@oddfoot\@evenfoot
     }
\def\@seccntDot{.}
\def\@seccntformat#1{\csname the#1\endcsname\@seccntDot\hskip 0.5em}
\def\ps@corpocapitulo{%
     \let\@oddhead\@empty
     \let\@evenhead\@empty
     \renewcommand{\headrulewidth}{0.5pt}%
      \def\@oddfoot{}
      \def\@evenfoot{}
     \def\@oddhead{\bfseries\tiny\fontfamily{phv}\selectfont Detecção de manchas solares\hfill{\small \thepage}}%
     \def\@evenhead{\bfseries\tiny\fontfamily{phv}\selectfont {\small \thepage}\hfill Spagiari, Santos, Costa, Válio e Marengoni}}%
\widowpenalty=10000
\clubpenalty=10000
\displaywidowpenalty=10000
\newcommand{\booktitle}[1]{\gdef\@booktitle{#1}\setboolean{@booktitle}{true}}
\newcommand{\chaptertitle}[1]{\gdef\@chaptertitle{#1}}
\newcommand{\@chaptertitle}{\@latex@error{No \noexpand\chaptertitle given}\@ehc}
\newcommand{\authors}[1]{\gdef\@authors{#1}}
\newcommand{\@authors}{\@latex@error{No \noexpand\authors given}\@ehc}
\newcommand{\affiliation}[1]{\gdef\@affiliation{#1}}
\newcommand{\@affiliation}{\@latex@error{No \noexpand\affiliation given}\@ehc}
\newcommand{\country}[1]{\gdef\@country{#1}}
\newcommand{\@country}{\@latex@error{No \noexpand\country given}\@ehc}
\newcommand{\secondauthors}[1]{\gdef\@secondauthors{#1}\setboolean{@secondauthors}{true}}
\newcommand{\secondaffiliation}[1]{\gdef\@secondaffiliation{#1}\setboolean{@secondaffiliation}{true}}
\newcommand{\secondcountry}[1]{\gdef\@secondcountry{#1}\setboolean{@secondcountry}{true}}
\newcommand{\thirdauthors}[1]{\gdef\@thirdauthors{#1}\setboolean{@thirdauthors}{true}}
\newcommand{\thirdaffiliation}[1]{\gdef\@thirdaffiliation{#1}\setboolean{@thirdaffiliation}{true}}
\newcommand{\thirdcountry}[1]{\gdef\@thirdcountry{#1}\setboolean{@thirdcountry}{true}}
\newcounter{chapter}
\setcounter{chapter}{1}
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\csname the#1\endcsname
\ifnum #2<1.\fi}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec\hspace{1ex}}%
          \interlinepenalty \@M #8 \@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand \small{%
   \@setfontsize \small\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viiipt\@ixpt}
\renewcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\renewcommand\large{\@setfontsize\large\@xpt\@xiipt}
\renewcommand\Large{\@setfontsize\Large\@xipt{13.6}}
\renewcommand\LARGE{\@setfontsize\LARGE{16}{20.6}}
\renewcommand\huge{\@setfontsize\huge{18}{23}}
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\setcounter{secnumdepth}{3}%
\setcounter{tocdepth}{5}%
\renewcommand{\@dotsep}{0}
\renewcommand*\l@section{\@dottedtocline{1}{0em}{1.5em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\renewcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\renewcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\renewcommand{\section}{\@startsection%
  {section}%
  {0}%
  {0em}%
  {-\baselineskip}%
  {0.5\baselineskip}%
  {\fontfamily{phv}\bfseries\large }}%
\renewcommand{\subsection}{\@startsection%
    {subsection}%
  {1}%
  {0em}%
  {-\baselineskip}%
  {0.01\baselineskip}%
  {\fontfamily{phv}\bfseries\normalsize}}%
\renewcommand{\subsubsection}{\@startsection%
  {subsubsection}%
  {2}%
  {0em}%
  {-\baselineskip}%
  {0.01\baselineskip}%
  {\fontfamily{phv}\bfseries\normalsize}}%
\renewcommand{\paragraph}{\@startsection%
  {paragraph}%
  {3}%
  {0em}%
  {-\baselineskip}%
  {0.01\baselineskip}%
  {\fontfamily{phv}\bfseries\normalsize}}%
\renewcommand{\subparagraph}{\@startsection%
  {subparagraph}%
  {4}%
  {0.7cm}%
  {-\baselineskip}%
  {0.5\baselineskip}%
  {\normalfont\normalsize\itshape\sffamily}}%
\def\@maketitle{
\newpage
  \begin{flushright}%
  {\bfseries\Large\fontfamily{phv}\selectfont Capítulo \arabic{chapter}}\\*[22pt]
  \end{flushright}%
    {\vspace{-22pt}\rule{\linewidth}{1pt}}
  \begin{center}%
  {\bfseries\Large\fontfamily{phv}\selectfont\@chaptertitle} \\  \vspace*{12pt}% %
 {\normalsize\fontfamily{phv}\selectfont \@authors\par}%  %
\rule{\textwidth}{1pt}
 {\normalsize  \vspace{10pt} \emph{\@affiliation}\par}%
 {\normalsize \emph{\@country}\par}
  \ifthenelse{\boolean{@secondauthors}}{\vskip\baselineskip%
 {\Large \@secondauthors\par}%
 {\large  \emph{\@secondaffiliation}\par}%
 {\large \emph{\@secondcountry}\par}
    }{}%
  \ifthenelse{\boolean{@thirdauthors}}{\vskip\baselineskip%
 {\Large \@thirdauthors\par}
 {\large  \emph{\@thirdaffiliation}\par}
 {\large \emph{\@thirdcountry}\par} %\vspace{20pt}%
    }{}%
 \end{center}%
}%
\sloppy
\usepackage{omninatbib}
\bibliographystyle{omni-estilo-capitulos}
\bibpunct{(}{)}{;}{a}{,}{,}
\gdef\harvardand{\&}
