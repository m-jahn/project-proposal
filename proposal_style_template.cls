%
% LaTeX2e Style for master thesis or project proposals
% Author: Argentina Ortega Sainz, Hochschule Bonn-Rhein-Sieg, Germany
% Please feel free to send issues, suggestions or pull requests to:
% https://github.com/mas-group/report-template
% Based on the template created by Ronni Hartanto in 2003
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proposal_style_template}[Proposal class]

\RequirePackage{xcolor}
\RequirePackage{ifthen}

% Colors
\definecolor{slcolor}{HTML}{882B21}
\definecolor{blue_headline}{RGB}{1,106,186} % light blue
\definecolor{green_headline}{RGB}{89,178,70} % light green
\definecolor{keywords}{RGB}{0,100,0}
\definecolor{comments}{RGB}{0,100,50}
\definecolor{stringred}{RGB}{160,0,0}
\definecolor{codeblue}{RGB}{0,0,150}

\newcommand*{\project}[1]{\gdef\@project{#1}%
}
\newcommand*{\@project}{\texttt{project} not set. Please select Master Thesis or R\&D Project}


% Options
\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{thesis}{\project{Master Thesis}}
\DeclareOption{rnd}{\project{Proposal}}

% Report options
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

% Execute the default option
\ExecuteOptions{thesis}

% Process other options
\ProcessOptions\relax

% Load class options
\LoadClass[11pt, a4paper, oneside]{article}

%-------------------------------------------------------------------------------
%	VARIOUS REQUIRED PACKAGES AND CONFIGURATIONS
%-------------------------------------------------------------------------------
\usepackage[sfdefault,light]{roboto} % requires package texlive-fonts-extra
%\usepackage{helvet} Helvetica (Arial) type font
%\usepackage{avant} alternative sans serif font
%\usepackage[T1]{fontenc} % T1 encoded Computer Modern-fonts, requires synaptic package cm-super
\usepackage[numbers,sort&compress]{natbib}
%\citeindextrue % Round brackets around citations, change to square for square brackets
\usepackage{graphicx} % Required to include images
\usepackage{amsmath,amssymb,theorem} % Math packages
\usepackage{listings} % Required for including snippets of code
\usepackage{booktabs} % Required for better horizontal rules in tables
% \usepackage{xspace} % Provides the ability to use an intelligent space
% \usepackage[printonlyused,withpage]{acronym} % Include a list of acronyms
% \usepackage[acronym, toc]{glossaries}%Better package for acronyms
% \usepackage{rotating} % Allows tables and figures to be rotated
\usepackage[colorlinks=true, allcolors=blue_headline]{hyperref} % Required for links and changing link options
\usepackage{microtype} % Slightly tweak font spacing for aesthetics
% \usepackage{algorithm}
% \usepackage[noend]{algpseudocode}
\usepackage[font=small,labelfont=bf]{caption}
% \captionsetup{belowskip=6pt,aboveskip=6pt}
% \usepackage{footnote}
% \usepackage{minipage-marginpar}
% \makesavenoteenv{tabular}
% \makesavenoteenv{table}
% \usepackage[flushleft]{threeparttable}
% \usepackage{subcaption}
% \usepackage[section]{placeins}
% \usepackage{lastpage}
% \usepackage[small, md, sc]{titlesec}
% \usepackage{inputenc}
\usepackage[margin=1.2in]{geometry}
% \usepackage{tocloft}
% \usepackage{adjustbox} % to limit size of tables
% \usepackage{pbox}
\usepackage[titletoc]{appendix}
% \usepackage{colortbl} % for color lines in tables
% \usepackage{rotfloat}
% \usepackage[page,toc,titletoc,title]{appendix} % Add appendices
% \usepackage{tocloft} % Add the word appendix to the TOC
\usepackage{setspace}
\usepackage{url}
\usepackage[utf8]{inputenc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{upgreek}

% Text spacing and margins
% line spacing
\onehalfspacing
% space between paragraphs
\usepackage{parskip}
% indention at beginning of paragraph, not necesary when parskip
% package is used
%\setlength{\parindent}{0pt}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fonts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\bibname{References} %Change Bibliography to References
\newcommand{\centerlogo}[1]{\def\@centerlogo{#1}}
\newcommand{\rightlogo}[1]{\def\@rightlogo{#1}}
\newcommand{\leftlogo}[1]{\def\@leftlogo{#1}}
\newcommand*{\institution}[1]{\gdef\@institution{#1}}
%\newcommand*{\@supervisors}{\texttt{\string\supervisors} currently
%not set. Please fix this.}
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*{\maketitle}{%
\begin{titlepage}
\newgeometry{left=3cm, bottom=3cm}

\begin{minipage}{0.475\textwidth}
    \centering
    \ifx\@rightlogo\@empty
    \relax
    \else
	\includegraphics[width=3.5cm]{\@rightlogo}
	\fi
\end{minipage}
\begin{minipage}{0.475\textwidth}
    \centering
    \ifx\@leftlogo\@empty
    \relax
    \else
    \includegraphics[width=3.5cm]{\@leftlogo}
    \fi
\end{minipage}
\ifx\@centerlogo\@empty
  \relax
\else
\centering
\vfill
\begin{minipage}{0.4\textwidth}
    \centering
    \includegraphics[width=3.5cm]{\@centerlogo}
\end{minipage}
\fi


\vfill
\centering
\vspace{1.5cm}
{\Large\@project\unskip\strut\par}
\vspace{1.5cm}
{\huge\bfseries\@title\unskip\strut\par}
\vspace{0.5cm}
{\large\@subtitle\unskip\strut\par}
\vspace{2cm}
{\Large\itshape\@author\unskip\strut\par}
\vfill
\vskip 8pt
{\large
\@institution\unskip\strut\par
}

\vfill

{\large \@date}
\end{titlepage}
\restoregeometry

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PAGE LAYOUT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SIDE MARGINS:
% \oddsidemargin 28pt      %   Left margin on odd-numbered pages.
% \evensidemargin 0pt      %   Left margin on even-numbered pages.
% \marginparwidth 40pt     %   Width of marginal notes.
%
% \marginparsep 12pt          % Horizontal space between outer margin and
%                             % marginal note
% \textwidth 15cm             % width of text
%
% % VERTICAL SPACING:
%                          % Top of page:
% \topmargin  10pt          %    distance from top of page to running head
% \headheight 14pt         %    Height of box containing running head.
% \headsep  1cm            %    Space between running head and text.
% \textheight 8.8in        %    space for text
% \footskip 30pt           %    Distance from baseline of box containing foot
%                          %    to baseline of last line of text.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Header and footer
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}
\let\footruleskip\undefined
\usepackage{fancyhdr}% http://ctan.org/pkg/fancyhdr

%% Page style for title pages.
\fancypagestyle{plain}{%
    \fancyhf{}
    \renewcommand*\headrulewidth{0pt}
    \renewcommand*\footrulewidth{0pt}
    \fancyfoot[L]{\color{darkgray}\footnotesize\@author}
    \fancyhead[C]{\color{darkgray}\footnotesize\@title}
    \fancyfoot[C]{\color{darkgray}\footnotesize\thepage}
    \fancyfoot[R]{\color{darkgray}\footnotesize\@project}
}

%% Fancy style for the main matter.
% \fancypagestyle{mainmatter}{%
%     \fancyhf{}
%     \renewcommand*\headrulewidth{0.5pt}
%     %% Page numbers on the top left and top right.
%     \fancyfoot[C]{\thepage}
%     %% Chapter name on the left (even) page.
%     \fancyhead[RE]{\nouppercase{\rightmark}}
%     %% Section name on the right (odd) page.
%     \fancyhead[LO]{\nouppercase{\leftmark}}
% }

%% The mainmatter style is default for normal pages.
%\pagestyle{mainmatter}

%% Print the current chapter and section at the top of the page in cyan.
% \renewcommand*\chaptermark[1]{\markboth{\textcolor{blue_headline} {\thechapter.\ } #1}{}}
% \renewcommand*\sectionmark[1]{\markright{\textcolor{blue_headline}{\thesection.\ } #1}}

%% Chapter titles have the same layout as parts.
% \titleformat{\chapter}
%     [display]
%     {\flushleft}%format
%     {\bfseries\Large}%label
%     {0pt}%sep
%     {\bfseries\Large\thechapter.~}%before code
%     % [\vspace{-1cm}]
% \titleformat{name=\chapter,numberless}
%   [display]
%   {\flushleft}
%   {\bfseries\Large}
%   {0pt}
%   {\bfseries\Large}
%
% \titlespacing{\chapter}{0pt}{-50pt}{10pt}
%
% \titleformat{\section}
%     [display]
%     {\flushleft}%format
%     {\bfseries\large}%label
%     {0pt}%sep
%     {\bfseries\large\thesection.~}%before code
%
% \titleformat{\subsection}
%     [display]
%     {\flushleft}%format
%     {\bfseries\large}%label
%     {0pt}%sep
%     {\bfseries\large\thesubsection.~}%before code


% change headline style: color, enumeration depth
\usepackage{sectsty}
\chapterfont{\color{blue_headline}}
\sectionfont{\color{blue_headline}}
\subsectionfont{\color{blue_headline}}
\subsubsectionfont{\color{blue_headline}}
\paragraphfont{\color{blue_headline}}
\setcounter{secnumdepth}{4}

% \titleformat{\section}
%   [block]
%   {\large\scshape\centering{\Roman{section}.}}
%   {}
%   {1em}
%   {}
%

\endinput
