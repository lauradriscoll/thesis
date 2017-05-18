% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "2.0",
%     date            = "25 March 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     supported       = "Send email to suchow@post.harvard.edu.",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertate}[2014/03/25 v2.0 Dissertate Class]

% HERE IS WHERE FONT SIZE IS SET 
\LoadClass[12pt, oneside, letterpaper]{book}

%Don't hyphenate
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

% Text layout.
%\RequirePackage[width=5.75in, letterpaper]{geometry}
%\RequirePackage[width=6in, height=8.5in, letterpaper]{geometry}
\RequirePackage[margin=1.25in, letterpaper]{geometry}
\usepackage{ragged2e}
\usepackage{textgreek}
%\RaggedRight
\RequirePackage{graphicx}
\usepackage{fixltx2e}
\usepackage[export]{adjustbox}[2011/08/13]
\parindent 12pt
\RequirePackage{lettrine}
\RequirePackage{setspace}
\RequirePackage{verbatim}
\RequirePackage{fltpage2}
%\RequirePackage{fltpage}

\usepackage{amsmath}
% Fonts.
\RequirePackage{color}
\RequirePackage{xcolor}
\usepackage{hyperref}
\usepackage{cleveref}
\RequirePackage{url}
\RequirePackage{amssymb}
\RequirePackage{mathspec}
\setmathsfont(Digits,Latin,Greek)[Numbers={Proportional}]{Arial}
\setmathrm{Arial}
\widowpenalty=300
\clubpenalty=300
\setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=1.0]{Times New Roman}
\newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{Arial}
\setsansfont[Scale=MatchLowercase, BoldFont={Arial Bold}]{Arial}
\setmonofont[Scale=MatchLowercase]{Arial}
\RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
                textfont={sf,footnotesize,singlespacing},
                justification={justified,RaggedRight},
                singlelinecheck=false,
                margin=0pt,
                figurewithin=chapter,
                tablewithin=chapter]{caption}
%s\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\usepackage[hang,flushmargin]{footmisc} 

% Headings and headers.
\RequirePackage{fancyhdr}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{15pt}
\pagestyle{plain}
\RequirePackage{titling}

% SET TABLE OF CONTENTS AND SECTION NUMBERING DEPTH
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{3}

% TABLE OF CONTENTS SETTINGS 
\usepackage[titles]{tocloft}
\usepackage[titletoc]{appendix}
%adds dots to chapter toc entries
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
%changes font of chapters in toc
\renewcommand{\cftchapfont}{\large\bfseries}
%changes font of sections in toc
\renewcommand{\cftsecfont}{\normalsize}

% CHANGE NAMES OF FRONTMATTER
\renewcommand\listfigurename{Listing of figures}
\renewcommand\listtablename{Listing of tables}
\renewcommand{\contentsname}{Table of contents}

% Endmatter
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

% DEFINE REFERENCES
%change name of bibliography
\renewcommand\bibname{References}
\RequirePackage[]{natbib}
%\renewcommand{\bibnumfmt}[1]{[#1]}
%shift references closer to title
%\renewcommand{\bibpreamble}{\vspace*{-30pt}}
%set separation between references
\renewcommand{\bibsep}{24pt}

% figure captions
\DeclareCaptionLabelSeparator{bar}{ | }
\captionsetup{labelsep=bar}


% School color found from university's graphic identity site:
% http://isites.harvard.edu/icb/icb.do?keyword=k75408&pageid=icb.page392732
%\definecolor{SchoolColor}{rgb}{0.6471, 0.1098, 0.1882} % Crimson
\definecolor{SchoolColor}{rgb}{0, 0, 0} % Crimson
%\definecolor{chaptergrey}{rgb}{0.6471, 0.1098, 0.1882} % for chapter numbers
\definecolor{chaptergrey}{rgb}{0, 0, 0}

% numbered bookmarks
\usepackage[numbered]{bookmark}

% REMOVE INDENTS
\newlength\tindent
\setlength{\tindent}{\parindent}
\setlength{\parindent}{0pt}
\renewcommand{\indent}{\hspace*{\tindent}}

%%%%% DEFINE CHAPTER HEADINGS
%\definecolor{gray75}{gray}{0.75}
\newcommand{\hsp}{\hspace{20pt}}
%\titleformat{\chapter}[hang]{\Huge\bfseries}{Chapter \thechapter\hsp\textcolor{gray75}{|}\hsp}{0pt}{\normalsize\bfseries}

\singlespace
\titleformat{\chapter}[display]{\color{SchoolColor}\Huge\bfseries}{Chapter \thechapter\hsp}{0pt}{\Large\bfseries}

\titlespacing{\chapter}{0pt}{0pt}{50pt}
\doublespace

% DEFINE SECTION HEADINGS
\titleformat*{\section}{\raggedright\large\bfseries}

% DEFINE SUBSECTION HEADINGS 
\titleformat*{\subsection}{\raggedright\bfseries}

% DEFINE SUBSUBSECTION HEADINGS 
\titleformat*{\subsubsection}{\raggedright\bfseries}

% An environment for paragraph-style section.
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

% Align reference numbers so that they do not cause an indent. Uncomment this if using numbered reference style.
%\newlength\mybibindent
%\setlength\mybibindent{0pt}
%\renewenvironment{thebibliography}[1]
%    {\chapter*{\bibname}%
%     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
%     \list{\@biblabel{\@arabic\c@enumiv}}
%          {\settowidth\labelwidth{\@biblabel{999}}
%           \leftmargin\labelwidth
%            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
%           \@openbib@code
%           \usecounter{enumiv}
%           \let\p@enumiv\@empty
%           \renewcommand\theenumiv{\@arabic\c@enumiv}}
%     \sloppy
%     \clubpenalty4000
%     \@clubpenalty \clubpenalty
%     \widowpenalty4000%
%     \sfcode`\.\@m}
%    {\def\@noitemerr
%      {\@latex@warning{Empty `thebibliography' environment}}
%     \endlist}

% Some definitions.
\def\advisor#1{\gdef\@advisor{#1}}
\def\coadvisorOne#1{\gdef\@coadvisorOne{#1}}
\def\coadvisorTwo#1{\gdef\@coadvisorTwo{#1}}
\def\committeeInternal#1{\gdef\@committeeInternal{#1}}
\def\committeeInternalOne#1{\gdef\@committeeInternalOne{#1}}
\def\committeeInternalTwo#1{\gdef\@committeeInternalTwo{#1}}
\def\committeeExternal#1{\gdef\@committeeExternal{#1}}
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degreeterm#1{\gdef\@degreeterm{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}

% School name and location
\university{Harvard University}
\universitycity{Cambridge}
\universitystate{Massachusetts}


\hypersetup{
    colorlinks,
    citecolor=SchoolColor,
    filecolor=black,
    linkcolor=black,
    urlcolor=SchoolColor,
}

\urlstyle{same}

% Formatting guidelines found in:
% http://www.gsas.harvard.edu/publications/form_of_the_phd_dissertation.php


%% HERE IS WHERE THE FRONT MATTER IS DEFINED (TITLE, COPYRIGHT, DEDICATION, ABSTRACT, TOC, FIGURE LIST, ETC.)
\renewcommand{\frontmatter}{
	\input{frontmatter/personalize}
	\maketitle
	\copyrightpage	
	
	\phantomsection
	\cleardoublepage
	\addcontentsline{toc}{chapter}{Abstract}
	\abstractpage
	
	\setstretch{1.4}
	\pdfbookmark{\contentsname}{Table of contents}
	\tableofcontents
	
	\phantomsection
	\cleardoublepage
	\addcontentsline{toc}{chapter}{List of figures}
	\listoffigures 
	
	\setstretch{2}
	
%	\phantomsection
%	\addcontentsline{toc}{chapter}{Dedication}
%	\dedicationpage
	
	\phantomsection
	\addcontentsline{toc}{chapter}{Acknowledgments}
	\acknowledgments
}


%% HERE IS WHERE THE TITLE PAGE FORMAT IS DEFINED
\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\setstretch{1.8}
	%\vspace*{\fill}
	\begin{center}
	
	\textcolor{SchoolColor}{\thetitle} \normalsize \\
	
	\vspace{36pt}
	
	\textsc{
	A dissertation presented \\ \vspace{12pt}
	by\\ \vspace{12pt}
	\theauthor \\ 
	\vspace{36pt}
	to\\ 
	\vspace{12pt}
	The Division of Medical Sciences\\
	\vspace{12pt}
	in partial fulfillment of the requirements\\
	for the degree of\\ \@degree\\
	in the subject of\\ \@field\\
	\vspace{24pt}
	\@university\\ \@universitycity, \@universitystate\\
	\@degreemonth\ \@degreeyear
	}
	\end{center} \vspace*{\fill}
}


%% HERE IS WHERE THE COPYRIGHT PAGE IS DEFINED
\newcommand{\copyrightpage}{
	\newpage
	\thispagestyle{empty}
	\vspace*{\fill}
	\begin{center}
	\scshape \noindent \small \copyright \small \the\year\hspace{3pt} \theauthor \\
	\noindent All rights reserved.
	\end{center}
	\vspace*{\fill}
	\newpage
	\rm
}


%% HERE IS WHERE THE ABSTRACT IS DEFINED
\newcommand{\abstractpage}{
	\newpage
	\pagenumbering{roman}
	\setcounter{page}{3}
	\pagestyle{fancy}
	\lhead{Dissertation Advisor: Dr. \@advisor} \rhead{\@author}
	\renewcommand{\headrulewidth}{0.0pt}
	\begin{center}
	\large \textcolor{SchoolColor}{\textbf{\@title}} \normalsize \\
	\vspace*{12pt}
	\scshape Abstract \\ \rm
	\end{center}
	\input{frontmatter/abstract}
	\lhead{} \rhead{}
	\vspace*{\fill}
	\newpage
	\cfoot{\thepage}
}


%% HERE IS WHERE THE DEDICATION PAGE FORMAT IS DEFINED
\newcommand{\dedicationpage}{
	\newpage \thispagestyle{fancy} \vspace*{\fill}
	\scshape \noindent \input{frontmatter/dedication}
	\vspace*{\fill} \newpage \rm
}


%% HERE IS WHERE THE ACKNOWLEDGEMENTS PAGE FORMAT IS DEFINED
\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} \newpage
	\setcounter{page}{1}
	\pagenumbering{arabic}
}
