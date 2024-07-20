% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "DEIThesis.cls",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, UniPD, Padua, Thesis, DEI",
%     docstring       = "Class for a DEI thesis."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DEIThesis}[DEI Thesis Class]

% -- OPTIONS --
% Pass as option the sections you want to show in the thesis

\newif\if@showcoverpage\@showcoverpagefalse
\newif\if@showwatermark\@showwatermarkfalse
\newif\if@showdedication\@showdedicationfalse
\newif\if@showfigures\@showfiguresfalse
\newif\if@showtables\@showtablesfalse
\newif\if@showalgorithms\@showalgorithmsfalse
\newif\if@showcodes\@showcodesfalse
\newif\if@showacronyms\@showacronymsfalse
\newif\if@showacknowledgments\@showacknowledgmentsfalse
\newif\if@showcolophon\@showcolophonfalse

\DeclareOption{coverpage}{\@showcoverpagetrue}
\DeclareOption{watermark}{\@showwatermarktrue}
\DeclareOption{dedication}{\@showdedicationtrue}
\DeclareOption{figures}{\@showfigurestrue}
\DeclareOption{tables}{\@showtablestrue}
\DeclareOption{algorithms}{\@showalgorithmstrue}
\DeclareOption{codes}{\@showcodestrue}
\DeclareOption{acronyms}{\@showacronymstrue}
\DeclareOption{acknowledgments}{\@showacknowledgmentstrue}
\DeclareOption{colophon}{\@showcolophontrue}

\ProcessOptions\relax

% -- GENERAL SETUP --

% Document class
\LoadClass[12pt, a4paper, twoside, openright]{book}


% Page geometry
\RequirePackage[
	inner=1.55in,
	outer=1in,
	footskip=0.5in,
	twoside,
	a4paper
]{geometry}


% Calc
\RequirePackage{calc}


% Language
\RequirePackage[main=english, italian]{babel}


% tcolorbox
\RequirePackage[most]{tcolorbox}


% Text & Math fonts
\RequirePackage{amsmath}
\RequirePackage{mathtools}
\RequirePackage{mathspec}
\RequirePackage{fontspec,xltxtra,xunicode}
	\defaultfontfeatures{Mapping=tex-text}
	
	\setmainfont[
		Mapping		= tex-text ,
		RawFeature	= {+onum, +pnum}
	]{Warnock Pro}
	
	\setmathsfont(Digits,Latin,Greek)[
		RawFeature	= {+lnum, +pnum}
	]{Warnock Pro}
	
	\setmathrm[
		Mapping		= tex-text ,
	]{Warnock Pro}
	
	\setsansfont[
		Scale		= MatchLowercase,
		Mapping		= tex-text ,
		RawFeature	= {+lnum, +pnum}
	]{Myriad Pro}
	
	\setmathsf[
		Mapping		= tex-text ,
	]{Myriad Pro}
	
	\setmonofont[
		Scale		= MatchLowercase,
		Mapping		= tex-text ,
		RawFeature	= {+lnum, +pnum}
	]{Courier New}
	
	\setmathtt[
		Mapping		= tex-text ,
	]{Courier New}
	
	\DeclareMathAlphabet{\mathbb}{U}{msb}{m}{n}
	\DeclareMathOperator*{\argmax}{arg\,max}
	\DeclareMathOperator{\rol}{rol}
	\DeclareMathOperator{\ror}{ror}
	\DeclareMathOperator{\srol}{srol}
	\DeclareMathOperator{\sror}{sror}
	\DeclareMathOperator{\lcm}{lcm}


% Spacings
\RequirePackage{setspace}


% Graphics
\RequirePackage{graphicx}

\RequirePackage{xcolor}
	\definecolor{accentColor}{RGB}{155, 0, 20}
	
\RequirePackage{tikz}
	\usetikzlibrary{shapes.geometric, arrows.meta}
	
\RequirePackage{pgfplots}
	\pgfplotsset{compat=1.18}
	\definecolor{colore1}{RGB}{59,117,175}
	\definecolor{colore2}{RGB}{239,134,54}
	\definecolor{colore3}{RGB}{81,158,63}
	\definecolor{colore4}{RGB}{197,58,50}
	\definecolor{colore5}{RGB}{141,105,184}
	\definecolor{colore6}{RGB}{132,89,78}
	\definecolor{colore7}{RGB}{213,125,191}
	\definecolor{colore8}{RGB}{127,127,127}
	\definecolor{colore9}{RGB}{188,189,69}
	\definecolor{colore10}{RGB}{88,187,204}
	
	\pgfplotsset{
		every axis/.append style={
			font=\sffamily,
			label style={font=\sffamily},
			tick label style={font=\sffamily},
			y tick style={font=\sffamily},
			legend style={font=\sffamily}
		}
	}
	
	\pgfplotsset{
		speedupStyleA/.style={
			axis x line*=bottom,
			axis y line*=left,
			xticklabel style={rotate=45, anchor=north east},
			ymajorgrids=true,
			grid style=dotted,
			cycle list={{colore1, mark=*}, {colore2,mark=*}, {colore3, mark=*}, {colore4,mark=*}, {colore5, mark=*}, {colore6,mark=*}, {colore7, mark=*}, {colore8,mark=*}, {colore9, mark=*}, {colore10, mark=*}},
			legend pos=outer north east,
			legend style={
				cells={anchor=west},
				draw=none,
			},
			ylabel={Speedup w.r.t. ntHash2},
			xmin=0, xmax=13,
			xtick={1,2,...,12},
			xticklabels={L5000000, L2000000, L1500000, L1000000, L500000, R200, R350, R500, R1000, R1500, R2000, R5000},
		}
	}
	
	\pgfplotsset{
		speedupStyleB/.style={
			axis x line*=bottom,
			axis y line*=left,
			xticklabel style={rotate=45, anchor=north east},
			ymajorgrids=true,
			grid style=dotted,
			cycle list={{colore1, mark=*}, {colore2,mark=*}, {colore3, mark=*}, {colore4,mark=*}, {colore5, mark=*}, {colore6,mark=*}, {colore7, mark=*}, {colore8,mark=*}, {colore9, mark=*}, {colore10, mark=*}},
			legend pos=outer north east,
			legend style={
				cells={anchor=west},
				draw=none,
			},
			ylabel={Speedup w.r.t. ntHash2},
			xmin=0, xmax=5,
			xtick={1,2,...,4},
			xticklabels={W14L31, W18L31, W22L31, W26L31},
		}
	}
	
	\pgfplotsset{
		speedupStyleC/.style={
			axis x line*=bottom,
			axis y line*=left,
			xticklabel style={rotate=45, anchor=north east},
			ymajorgrids=true,
			grid style=dotted,
			cycle list={{colore1, mark=*}, {colore2,mark=*}, {colore3, mark=*}, {colore4,mark=*}, {colore5, mark=*}, {colore6,mark=*}, {colore7, mark=*}, {colore8,mark=*}, {colore9, mark=*}, {colore10, mark=*},
			{colore1, mark=x}, {colore2,mark=x}, {colore3, mark=x}, {colore4,mark=x}, {colore5, mark=x}, {colore6,mark=x}, {colore7, mark=x}, {colore8,mark=x}, {colore9, mark=x}, {colore10, mark=x}},
			legend pos=outer north east,
			legend style={
				cells={anchor=west},
				draw=none,
			},
			ylabel={Speedup w.r.t. ntHash2},
			xmin=0, xmax=4,
			xtick={1,2,...,3},
			xticklabels={W10L15, W22L31, W32L45},
		}
	}
	
	\pgfplotsset{
		speedupStyleD/.style={
			axis x line*=bottom,
			axis y line*=left,
			xticklabel style={rotate=45, anchor=north east},
			ymajorgrids=true,
			grid style=dotted,
			cycle list={{colore1, mark=*}, {colore2,mark=*}, {colore3, mark=*}, {colore4,mark=*}, {colore5, mark=*}, {colore6,mark=*}, {colore7, mark=*}, {colore8,mark=*}, {colore9, mark=*}, {colore10, mark=*},
			{colore1, mark=x}, {colore2,mark=x}, {colore3, mark=x}, {colore4,mark=x}, {colore5, mark=x}, {colore6,mark=x}, {colore7, mark=x}, {colore8,mark=x}, {colore9, mark=x}, {colore10, mark=x}},
			legend pos=outer north east,
			legend style={
				cells={anchor=west},
				draw=none,
			},
			ylabel={Speedup w.r.t. ntHash2},
			xmin=0, xmax=7,
			xtick={1,2,...,6},
			xticklabels={W10L15, W14L31, W18L31, W22L31, W26L31, W32L45},
		}
	}
	
	\pgfplotsset{
		speedupStyleE/.style={
			axis x line*=bottom,
			axis y line*=left,
			xticklabel style={rotate=45, anchor=north east},
			ymajorgrids=true,
			grid style=dotted,
			legend pos=outer north east,
			legend style={
				cells={anchor=west},
				draw=none,
			},
			ylabel={Speedup w.r.t. MaskJelly},
			xmin=0, xmax=5,
			xtick={1,2,...,4},
			xticklabels={L500000, L2000000, R500, R2000},
			ybar,
			cycle list={{colore1, fill=colore1}, {colore2, fill=colore2}, {colore3, fill=colore3}, {colore4, fill=colore4}, {colore5, fill=colore5}, {colore6, fill=colore6}, {colore7, fill=colore7}, {colore8, fill=colore8}, {colore9, fill=colore9}, {colore10, fill=colore10}}
		}
	}
	
\RequirePackage{dirtree}

\RequirePackage{watermark}

\RequirePackage{rotating}


% Acronyms
\RequirePackage{acronym}
	\newcommand{\acronyms}{
		\phantomsection
		\addcontentsline{toc}{chapter}{\listacronymname}
		\chapter*{\listacronymname}
		\input{frontmatter/glossary}
		\cleardoublepage
	}


% Links
\RequirePackage[hyphens]{url}	

\RequirePackage[pdfa]{hyperref}
	\hypersetup{
		colorlinks,
		citecolor=accentColor,
		filecolor=black,
		linkcolor=black,
		urlcolor=accentColor
	}


% Enumerations
\RequirePackage{enumitem}
	\setlist[enumerate]{itemsep=0pt}
	\setlist[itemize]{itemsep=0pt}


% Captions
\RequirePackage{caption}
	\captionsetup{
		labelfont		= {bf, sf, footnotesize, singlespacing},
		textfont		= {sf, footnotesize, singlespacing},
		justification	= justified,
		singlelinecheck	= false,
		margin		= 0pt,
		figurewithin	= chapter,
		tablewithin	= chapter
	}
	
\RequirePackage{subcaption}


% Chapter, title & page style
\RequirePackage[compact, clearempty, pagestyles]{titlesec}
	\titleformat{\chapter}
		[display]
		{\Huge\filleft\thispagestyle{onlyPageNumber}}
		{\mbox{\addfontfeature{Numbers = {Lining}}\fontsize{100pt}{100pt}\selectfont\bfseries\color{accentColor}\thechapter}}
		{0ex}
		{}
	
	\titleformat{\section}
		[hang]
		{\sffamily\bfseries\Large\color{accentColor}}
		{\thesection}
		{1ex}
		{}
	
	\titleformat{\subsection}
		[hang]
		{\sffamily\bfseries\large\color{accentColor}}
		{\thesubsection}
		{1ex}
		{}
	
	\titleformat{\subsubsection}
		[hang]
		{\sffamily\bfseries\normalsize\color{accentColor}}
		{\thesubsubsection}
		{1ex}
		{}
	
	\newpagestyle{main}{
		\setfoot	[{\small\thepage}]
				[]
				[]
				{}
				{}
				{{\small\thepage}}
	}
	\pagestyle{main}
	
	\newpagestyle{onlyPageNumber}{
		\setfoot	[{\small\thepage}]
				[]
				[]
				{}
				{}
				{{\small\thepage}}
	}
	
	\newpagestyle{coverpage}{
		% set brands in header
		\sethead	{\mbox{\includegraphics[height=3cm]{res/ltunipd}}}
				{}
				{\mbox{\includegraphics[height=3cm]{res/dei}}}
		
		% set academic year in footer
		\setfoot	{}
				{\parbox[b]{\textwidth}{\centering\normalsize\scshape Academic Year \@academicYear\ --\ \@thesisDate}}
				{}
	}


% Footnotes
%\RequirePackage{footnote}

%\RequirePackage[bottom]{footmisc}


% references
\RequirePackage[autostyle]{csquotes}

\RequirePackage[
	backend=bibtex,
	style=numeric,
	maxnames=99,
	sorting=ynt,
	language=english,
]{biblatex}
	\addbibresource{references.bib}


% Imports
\RequirePackage{import}


% Tables
\RequirePackage{booktabs}

\RequirePackage{multirow}

	\AtBeginEnvironment{tabular}{
		\sffamily
		\addfontfeature{Numbers = {Monospaced}}
	}

\RequirePackage{rotating}


% Algorithms & code snippets
\RequirePackage[algochapter,linesnumbered,ruled,vlined]{algorithm2e}
	\newcommand{\sfbf}[1]{{\sffamily\bfseries#1}}
	\newcommand{\sfem}[1]{{\sffamily\em#1}}
	\newcommand{\ttsmall}[1]{{\ttfamily\small#1}}
	\SetFuncSty{ttsmall}
	\SetFuncArgSty{sfem}
	\SetProgSty{sfem}
	\SetArgSty{sfem}
	\SetDataSty{sffamily}
	\SetCommentSty{ttsmall}
	\SetNlSty{sffamily}{}{:}
	\SetAlFnt{\sffamily}
	\SetAlCapFnt{\sffamily}
	\SetAlCapNameFnt{\sffamily}
	\SetKwSty{sfbf}
	\SetKw{KwAnd}{and}
	\SetKw{KwOr}{or}
	\SetKw{KwTrue}{true}
	\SetKw{KwFalse}{false}
	\SetKwProg{Fn}{Function}{:}{\KwRet}
	

\RequirePackage{algorithmic}

\RequirePackage{listings}

	\definecolor{commentsColor}{RGB}{36, 161, 156}
	\definecolor{numColor}{RGB}{71, 96, 114}
	\definecolor{stringColor}{RGB}{205, 63, 62}
	\definecolor{kwColor}{RGB}{248, 6, 204}
	\definecolor{bgCodeColor}{RGB}{255, 249, 249}
	
	\lstdefinestyle{codeSnippet} {
		backgroundcolor=\color{bgCodeColor},
		commentstyle=\color{commentsColor},
		keywordstyle=\color{kwColor},
		numberstyle=\tiny\color{numColor},
		stringstyle=\color{stringColor},
		basicstyle=\ttfamily\footnotesize,
		breakatwhitespace=false,         
		breaklines=true,                 
		captionpos=b,                    
		keepspaces=true,                 
		numbers=left,                    
		numbersep=5pt,                  
		showspaces=false,                
		showstringspaces=false,
		showtabs=false,                  
		tabsize=2
	}
	
	\lstset{style=codeSnippet}


% export in PDF/X, PDF/A, etc...
\RequirePackage[a-3b,mathxmp]{pdfx}


% Microtype
\RequirePackage{microtype}







% -----------------------------------------
%	D E F I N I T I O N S
% -----------------------------------------

% university
\def\university#1{\gdef\@university{#1}}

% master name
\def\mastername#1{\gdef\@mastername{#1}}

% academic Year
\def\academicYear#1{\gdef\@academicYear{#1}}

% thesis date
\def\thesisDate#1{\gdef\@thesisDate{#1}}
\def\thesisYear#1{\gdef\@thesisYear{#1}}

% student ID
\def\studentId#1{\gdef\@studentId{#1}}

% advisor
\def\advisor#1{\gdef\@advisor{#1}}

% co-advisor (if one)
\def\coadvisor#1{\gdef\@coadvisor{#1}}
\def\coadvisorsUniversity#1{\gdef\@coadvisorsUniversity{#1}}









% --------------------------------------------------
%	C U S T O M   C O M M A N D S
% --------------------------------------------------
\newcommand{\etc}{etc}
\def \th {{\normalfont\addfontfeature{VerticalPosition=Superior}th}}

\newtcolorbox{exampleBox}{
	empty,
	title={Example},
	attach boxed title to top left,
	minipage boxed title,
	boxed title style={empty, size=minimal, toprule=0pt, top=2mm, left=0.975em, right=0mm, overlay={}},
	coltitle=accentColor,
	fonttitle=\sffamily\bfseries,
	before=\par\noindent,
	parbox=false,
	boxsep=0pt,
	left=0.975em,
	right=0mm,
	left skip=0.525em,
	breakable,
	pad at break=0mm,
	before upper=\csname @totalleftmargin\endcsname0pt,
	overlay unbroken={\draw[accentColor, line width=0.4pt] ([xshift=-0pt]title.north west) -- ([xshift=-0pt]frame.south west); },
	overlay first={\draw[accentColor, line width=0.4pt] ([xshift=-0pt]title.north west) -- ([xshift=-0pt]frame.south west); },
	overlay middle={\draw[accentColor, line width=0.4pt] ([xshift=-0pt]frame.north west) -- ([xshift=-0pt]frame.south west); },
	overlay last={\draw[accentColor, line width=0.4pt] ([xshift=-0pt]frame.north west) -- ([xshift=-0pt]frame.south west); },
}
\newenvironment{example}
	{
		\setlength{\parindent}{0pt}
		\begin{exampleBox}
	}
	{\end{exampleBox}}

\def \printTitle {\@title}











% --------------------------------------------------
%	F R O N T   M A T T E R
% --------------------------------------------------
\renewcommand{\frontmatter} {
	% set roman page numbering
	\pagenumbering{roman}

	% create cover
	\maketitle

	% custom titles
	\renewcommand{\listfigurename}{List of Figures}
	\renewcommand{\listtablename}{List of Tables}
	\def \listalgorithmname {List of Algorithms}
	\renewcommand{\lstlistingname}{Code}
	\renewcommand{\lstlistlistingname}{List of Code Snippets}
	\def \listacronymname {List of Acronyms}

	\def \abstractname {Abstract}
	\def \abstractnameit {Sommario}

	\renewcommand{\bibname}{References}

	\def \acknowledgmentsname {Acknowledgments}

	% insert dedication page
	\if@showdedication
		\dedicationpage
	\fi

	% insert abstract
	\abstractpage

	% insert table of contents
	\tableofcontents
	\cleardoublepage

	% insert list of figures
	\if@showfigures
		\listoffigures
		\addcontentsline{toc}{chapter}{\listfigurename}
		\cleardoublepage
	\fi

	% insert list of tables
	\if@showtables
		\listoftables
		\addcontentsline{toc}{chapter}{\listtablename}
		\cleardoublepage
	\fi

	% insert list of algorithms
	\if@showalgorithms
		\listofalgorithms
		\addcontentsline{toc}{chapter}{\listalgorithmname}
		\cleardoublepage
	\fi

	% insert list of code snippets
	\if@showcodes
		\lstlistoflistings
		\addcontentsline{toc}{chapter}{\lstlistlistingname}
		\cleardoublepage
	\fi

	% insert list of abbreviations/acronyms
	\if@showacronyms
		\acronyms
	\fi
}



% --------------------------------------------------
%	M A K E T I T L E
% --------------------------------------------------
\renewcommand{\maketitle} {
	\thispagestyle{coverpage}
	
	% set watermark
	\if@showwatermark
		\thiswatermark{
			\centering
			\put(-420,-685) {
				\includegraphics[width=1.65\linewidth]{res/unipdbg}
			}
		}
	\fi

	% content
	\begin{center}
		% master name
		\vspace*{\stretch{3}}
		
		{
			\normalsize\scshape
			Master Thesis in \@mastername
		
		}
		\vspace{3ex}

		% title
		\onehalfspacing		
		{
			\LARGE\bfseries
			\@title
		
		}
		\vspace{\stretch{3}}

		% authors, advisors etc...
		\doublespacing
		\begin{flushleft}
			{
				\small\scshape
				Candidate \hspace{\fill} Supervisor
				
			}
			{
				\large\bfseries
				\@author \hspace{\fill} \@advisor
				
			}
			{
				\small\bfseries
				Student ID \@studentId \hspace{\fill} \@university
				
			}
			
			% insert co-advisor if not empty
			\ifx\@coadvisor\empty \else
				\\
				
				{
					\small\scshape
					\hspace*{\fill} Co-Supervisor
					
				}
				{
					\large\bfseries
					\hspace*{\fill} \@coadvisor
					
				}
				{
					\small\bfseries
					\hspace*{\fill} \@coadvisorsUniversity
					
				}
			\fi
		\end{flushleft}

		\vspace{\stretch{1}} \null
	\end{center}

	% restore defaults
	\cleardoublepage
	\onehalfspacing
}
\renewcommand{\maketitle} {
	\if@showcoverpage
		\thispagestyle{coverpage}
	
		% content
		\begin{center}
			% master name
			\vspace*{\stretch{3}}
		
			{
				\normalsize\scshape
				Master Thesis in \@mastername
		
			}
			\vspace{3ex}

			% title
			\onehalfspacing		
			{
				\LARGE\bfseries
				\@title
			
				}
				\vspace{\stretch{3}}
		
				% authors, advisors etc...
				\doublespacing
				\begin{flushleft}
				{
					\small\scshape
					Candidate \hspace{\fill} Supervisor
					
				}
				{
					\large\bfseries
					\@author \hspace{\fill} \@advisor
					
				}
				{
					\small\bfseries
					Student ID \@studentId \hspace{\fill} \@university
					
				}
				
				% insert co-advisor if not empty
				\ifx\@coadvisor\empty \else
					\\
				
					{
						\small\scshape
						\hspace*{\fill} Co-Supervisor
					
					}
					{
						\large\bfseries
						\hspace*{\fill} \@coadvisor
						
					}
					{
						\small\bfseries
						\hspace*{\fill} \@coadvisorsUniversity
					
					}
				\fi
			\end{flushleft}

			\vspace{\stretch{1}} \null
		\end{center}

		% restore defaults
		\cleardoublepage
		\onehalfspacing
	\fi
	
	
	
	\thispagestyle{coverpage}
	
	% set watermark
	\if@showwatermark
		\thiswatermark{
			\centering
			\put(-420,-685) {
				\includegraphics[width=1.65\linewidth]{res/unipdbg}
			}
		}
	\fi

	% content
	\begin{center}
		% master name
		\vspace*{\stretch{3}}
		
		{
			\normalsize\scshape
			Master Thesis in \@mastername
		
		}
		\vspace{3ex}

		% title
		\onehalfspacing		
		{
			\LARGE\bfseries
			\@title
		
		}
		\vspace{\stretch{3}}

		% authors, advisors etc...
		\doublespacing
		\begin{flushleft}
			{
				\small\scshape
				Candidate \hspace{\fill} Supervisor
				
			}
			{
				\large\bfseries
				\@author \hspace{\fill} \@advisor
				
			}
			{
				\small\bfseries
				Student ID \@studentId \hspace{\fill} \@university
				
			}
			
			% insert co-advisor if not empty
			\ifx\@coadvisor\empty \else
				\\
				
				{
					\small\scshape
					\hspace*{\fill} Co-Supervisor
					
				}
				{
					\large\bfseries
					\hspace*{\fill} \@coadvisor
					
				}
				{
					\small\bfseries
					\hspace*{\fill} \@coadvisorsUniversity
					
				}
			\fi
		\end{flushleft}

		\vspace{\stretch{1}} \null
	\end{center}

	% restore defaults
	\cleardoublepage
	\onehalfspacing
}



% --------------------------------------------------
%	D E D I C A T I O N
% --------------------------------------------------
\newcommand{\dedicationpage} {
	\thispagestyle{empty}
	\phantomsection

	\vspace*{\stretch{1}}

	\begin{flushright}
		\input{frontmatter/dedication}
	\end{flushright}

	\vspace{\stretch{4}} \null

	\cleardoublepage
}



% --------------------------------------------------
%	A B S T R A C T
% --------------------------------------------------
\newenvironment{abstract}[1][en]{
	% get argument (en/it)
	\def \it {it}
	\def \arg {#1}

	\vspace*{\fill}
	
	\begin{center}
		\bfseries

		% set title in english or italian
		\ifx\arg\it
			\abstractnameit
		\else
			\abstractname
		\fi
	\end{center}
}{
	\vfill \null
}

\newcommand{\abstractpage} {
	\thispagestyle{empty}
	\input{frontmatter/abstract}

	\cleardoublepage
	
	\thispagestyle{empty}
	\input{frontmatter/sommario}
}



% --------------------------------------------------
%	M A I N   M A T T E R
% --------------------------------------------------
\renewcommand{\mainmatter} {
	\cleardoublepage

	% reset page counter
	\setcounter{page}{1}

	% set arabic page numbering
	\pagenumbering{arabic}

	% reset chapter counter
	\setcounter{chapter}{0}
}



% --------------------------------------------------
%	B A C K   M A T T E R
% --------------------------------------------------
\renewcommand{\backmatter}{
	\cleardoublepage
	\phantomsection

	% add references
	\addcontentsline{toc}{chapter}{\bibname}
	{
		\sloppy
		\printbibliography
		
	}

	\if@showacknowledgments
		\cleardoublepage
		\phantomsection

		% add acknowledgments
		\addcontentsline{toc}{chapter}{\acknowledgmentsname}
		\acknowledgments
	\fi


	% add colophon
	\if@showcolophon
		\clearpage
		\thispagestyle{empty}\null
	
		\ifodd\thepage
			\clearpage
			\thispagestyle{empty}\null
		\fi
	
		\phantomsection
		\colophon
	\else
		\ifodd\thepage
			\clearpage
			\thispagestyle{empty}\null
		\fi
	\fi
}



% ---------------------------------------------------
%	A C K N O W L E D G E M E N T
% ---------------------------------------------------
\newcommand{\acknowledgments} {
	\phantomsection
	\chapter*{\acknowledgmentsname}
	\input{backmatter/thanks}
}



% --------------------------------------------------
%	C O L O P H O N
% --------------------------------------------------
\newcommand{\colophon} {
	\thispagestyle{empty}
	\phantomsection

	\vspace*{\stretch{1}}

	{
		\small
		{
			\noindent
			\scshape
			colophon
		
		}
		
		\vspace{2em}
		
		\input{backmatter/colophon}
		
		\vspace{2em}
		
		{
			\noindent
			\itshape
			\@title
			
		}
		
		\noindent
		Romano d'Ezzelino, \@thesisDate, \@thesisYear
	}
}