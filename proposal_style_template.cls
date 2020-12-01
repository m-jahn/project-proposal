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
\usepackage{graphicx} % Required to include images
\usepackage{amsmath,amssymb,amsfonts,theorem} % Math packages
\usepackage{listings} % Required for including snippets of code
\usepackage{booktabs} % Required for better horizontal rules in tables
\usepackage[colorlinks=true, allcolors=green_headline]{hyperref} % Required for links and changing link options
\usepackage{microtype} % Slightly tweak font spacing for aesthetics
\usepackage[font=small,labelfont=bf]{caption}
\usepackage[margin=1.2in]{geometry}
\usepackage[titletoc]{appendix}
% \usepackage{colortbl} % for color lines in tables
\usepackage{setspace}
\usepackage{url}
\usepackage[utf8]{inputenc}
\usepackage{graphicx}
\usepackage{upgreek}


%-------------------------------------------------------------------------------
%	SPACING & PARAGRAPHS
%-------------------------------------------------------------------------------
% Text spacing and margins
% line spacing
\onehalfspacing
% space between paragraphs and indentation using a package
%\usepackage{parskip}
% or set manually:
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.25\baselineskip}

% change headline style: color, enumeration depth
\usepackage{sectsty}
\chapterfont{\color{green_headline}}
\sectionfont{\color{green_headline}}
\subsectionfont{\color{green_headline}}
\subsubsectionfont{\color{green_headline}}
\paragraphfont{\color{green_headline}}
\setcounter{secnumdepth}{4}

%-------------------------------------------------------------------------------
%	TITLE PAGE LAYOUT & LOGOS
%-------------------------------------------------------------------------------
\renewcommand\bibname{References} %Change Bibliography to References
\newcommand{\centerlogo}[1]{\def\@centerlogo{#1}}
\newcommand{\rightlogo}[1]{\def\@rightlogo{#1}}
\newcommand{\leftlogo}[1]{\def\@leftlogo{#1}}
\newcommand*{\project}[1]{\gdef\@project{#1}}
\newcommand*{\institution}[1]{\gdef\@institution{#1}}
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}


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

%-------------------------------------------------------------------------------
%	PAGE LAYOUT
%-------------------------------------------------------------------------------

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


%-------------------------------------------------------------------------------
%	HEADER AND FOOTER
%-------------------------------------------------------------------------------
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


\endinput
