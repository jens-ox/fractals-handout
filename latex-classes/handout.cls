\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{handout}[]

\newcommand{\@tufte@class}{article}% base LaTeX class
\newcommand{\@tufte@pkgname}{handout}% package name

%%
% load own custom style
\input{latex-classes/jens-common.tex}

%%
% load common tufte style
\input{latex-classes/tufte-common.tex}

\RequirePackage{mathtools}  
\RequirePackage{hyperref}
\RequirePackage{wrapfig}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\let\mathbbalt\mathbb
\RequirePackage{fdsymbol}
\RequirePackage[eqno]{tabfigures}
\RequirePackage{natbib}
\RequirePackage{index}
\RequirePackage{tikz}

\RequirePackage{bm}
\RequirePackage[parfill]{parskip}

% Fonts
\RequirePackage{crimson}
\RequirePackage{FiraSans}
\RequirePackage[ttdefault=true]{AnonymousPro}

\RequirePackage{tcolorbox}

\RequirePackage[ngerman]{babel}

\hypersetup{
    colorlinks,
    linkcolor={red!70!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}
}

% Pseudocode-Umgebung
\newenvironment{pseudocode}
  {
    \begin{tcolorbox}[colframe=black!3!white,left=0mm]
    \ttfamily
    \footnotesize
  }
  {
    \end{tcolorbox}
  }

% Frage-Umgebung
\newenvironment{theorembox}
  {
    \begin{tcolorbox}[colback=black!3!white,colframe=black!15!white,coltitle=black,fonttitle=\bfseries,arc=2mm,toprule=0.2mm,bottomrule=0.2mm,leftrule=0.2mm,rightrule=0.2mm,left=1mm,right=1mm,titlerule=0mm,middle=0.5mm,enlarge top by=5mm, enlarge bottom by=5mm]
  }
  {
    \end{tcolorbox}
  }

% Inline-Code
\newcommand{\code}[1]{\lstinline[language=c,basicstyle=\ttfamily]|#1|}

\RequirePackage{booktabs} % book-quality tables
\RequirePackage{units}    % non-stacked fractions and better unit spacing
\RequirePackage{multicol} % multiple column layout facilities
\RequirePackage{fancyvrb} % extended verbatim environments
  \fvset{fontsize=\normalsize}% default font size for fancy-verbatim environments

% Proof environment
\newenvironment{proof}[1]
  {\small\textbf{Beweis} #1\itshape \\}
  {\normalfont}

% Abstract environment
\renewenvironment{abstract}
  {\begin{quotation}\if@tufte@sfsidenotes\begin{sffamily}\fi}
  {\if@tufte@sfsidenotes\end{sffamily}\fi\end{quotation}}

%%
% End of file
\endinput
