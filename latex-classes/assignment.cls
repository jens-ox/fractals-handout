\ProvidesClass{assignment}[assignment class (Jens Ochsenmeier)]
\NeedsTeXFormat{LaTeX2e}[1996/06/01]


% load base class
\LoadClass{tufte-handout}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[ngerman,english]{babel}
\RequirePackage{booktabs}
\RequirePackage{fancyvrb}
\RequirePackage{xspace}
\RequirePackage{makeidx}
\RequirePackage{pdfpages}
\RequirePackage{menukeys}
\RequirePackage{float}
\RequirePackage{multicol}

% -- Tufte
\RequirePackage{fancyhdr}
\RequirePackage{natbib}
\RequirePackage{bibentry}
\RequirePackage{optparams}
\RequirePackage{paralist}
\RequirePackage{placeins}
\RequirePackage{ragged2e}
\RequirePackage{setspace}
\RequirePackage{textcase}
\RequirePackage{textcomp}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{xifthen}

% -- Mathe
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{rotating}
\RequirePackage{mathtools}
\RequirePackage{wrapfig}
\RequirePackage{fdsymbol}
\RequirePackage{bbold}

% -- Malen
\RequirePackage{units}
\RequirePackage{color}
\RequirePackage{tikz}

% Glyph-to-Unicode Translation for searching in PDFs (needs PdfTex >=1.4)
\InputIfFileExists{glyphtounicode}{\pdfgentounicode=1}{}





% -- GRAPHICX SETUP
\graphicspath{{assets/images/}}

% -- FONT SETUP
\fvset{fontsize=\normalsize}

% Generates the index
\makeindex


% Define styles for bags and leafs
\tikzstyle{bag} = [text width=4em, text centered]
\tikzstyle{end} = [fill=white, circle, draw=black]

% default font
\usepackage[default]{droidserif}

% sans serif font
\usepackage{sourcesanspro}

% set font encoding
\usepackage[T1]{fontenc}

\newcommand{\xeq}[2][]{\ensuremath{\overset{
  {\scriptscriptstyle{#2}}}{\underset{\mathclap{#1}}{=}}}}
\newcommand{\xleq}[2][]{\ensuremath{\overset{
  {\scriptscriptstyle{#2}}}{\underset{\mathclap{#1}}{\leq}}}}
%Tags nach links
\newcommand{\leqnomode}{\tagsleft@true\let\veqno\@@leqno}
\newcommand{\reqnomode}{\tagsleft@false\let\veqno\@@eqno}
\makeatother

\newcommand{\thistheoremname}{}
\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}

\newcommand{\ot}{\leftarrow}
\newcommand{\To}{\implies}

\newcommand{\e}{\text{\rmfamily e}}
\renewcommand{\i}{\text{\rmfamily i}}


%Malpunkte
\mathcode`\*="8000
{\catcode`\*\active\gdef*{\cdot}}
%Punkte zu Kommata
\DeclareMathSymbol{.}{\mathord}{letters}{"3B}

\swapnumbers
\newtheoremstyle{definition}{2em}{2em}{}{}{\large\bfseries}{.}{.5em}{}
\theoremstyle{definition}
\newtheorem{df}{Definition}[section]
\newtheorem{genericthm}[df]{\thistheoremname}
\newtheorem{bsp}[df]{Example}

% definition environment
\newenvironment{definition}[1]{\renewcommand{\thistheoremname}{Definition --- #1}\begin{genericthm}\setlength\parindent{0em}~\par}{\end{genericthm}}

% example environment
\newenvironment{example}[1]{\renewcommand{\thistheoremname}{Example --- #1}\begin{genericthm}\setlength\parindent{0em}~\par}{\end{genericthm}}

% theorem environment
\newenvironment{theorem}[1]{\renewcommand{\thistheoremname}{Satz --- #1}\begin{genericthm}\setlength\parindent{0em}~\par}{\end{genericthm}}

% lemma environment
\newenvironment{lemma}[1]{\renewcommand{\thistheoremname}{Lemma --- #1}\begin{genericthm}\setlength\parindent{0em}~\par}{\end{genericthm}}

% prose/general purpose environment
\newenvironment{bla}[1]
{\renewcommand{\thistheoremname}{#1}\begin{genericthm}\setlength\parindent{0em}~\par}{\end{genericthm}}

% problem environment
\newenvironment{problem}[1]{\setlength\parindent{0em}~\par\textbf{\Large{Problem --- #1.}} \\}{\bigskip\medskip}

% proofs
\renewenvironment{proof}[1][\textbf{\proofname}]{{\ \\ #1: }}{\hfill $ \blacksquare $ \\}

% task
\newenvironment{task}{\medskip\centering\sffamily\small\itshape}{\\ \bigskip\medskip}

% corollary
\newenvironment{corollary}{\textbf{Corollary}: }{}


\tikzset{stage/.style = {draw,minimum width=15mm,minimum height=7mm},
      edgenode/.style = {font=\small,near start,fill=white}}

\setcounter{tocdepth}{1}
\setcounter{secnumdepth}{1}

\titleformat{\chapter}%
  [display]% shape
  {\relax\ifthenelse{\NOT\boolean{@tufte@symmetric}}{\begin{fullwidth}}{}}% format applied to label+text
  {}% label
  {0pt}% horizontal separation between label and title body
  {\huge\itshape}% before the title body
  [\ifthenelse{\NOT\boolean{@tufte@symmetric}}{\end{fullwidth}}{}]% after the title body

\endinput