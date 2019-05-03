%% techjam-codequestions.cls
%% Author: Abhabongse Janthong
%
% This document class preloads most common packages and most common
% configurations of the document according to my own taste.
%
% It is released under MIT License because the author thinks that the
% LaTeX Project Public License is annoying and life is complicated.
\NeedsTeXFormat{LaTeX2e}[2016/02/01]
\ProvidesClass{techjam-codequestions}[2019/03/31 v0.1 (Abhabongse Janthong)]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Very important utility packages ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{etoolbox}
\RequirePackage{xparse}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Options for this document class ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\PassOptionsToPackage{x11names,table,hyperref}{xcolor}
\LoadClass[a4paper,symmetric,nofonts,justified,marginals=raggedright]{tufte-book}
% \geometry{textwidth=.56\paperwidth}

%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Spacings ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{setspace}
\setstretch{1.2}
\setlength{\parskip}{0pc}
\setlength{\parindent}{2pc}

%% Hair space
\newrobustcmd{\hrsp}{\ifmmode\mskip1mu\else\kern0.0625em\fi}

%% Spaces above or below equations
\setlength{\abovedisplayskip}{0.6pc plus 0.15pc minus 0.1pc}
\setlength{\belowdisplayskip}{0.6pc plus 0.15pc minus 0.1pc}
\setlength{\abovedisplayshortskip}{0.3pc plus 0.1pc minus 0.05pc}
\setlength{\belowdisplayshortskip}{0.3pc plus 0.1pc minus 0.05pc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Fonts and Languages ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
% \RequirePackage[fakebold]{firamath-otf}

% Enable line breaks for Thai text
\XeTeXlinebreaklocale "th_TH"
\XeTeXlinebreakskip = 0pt plus 0.5pt minus 0.25pt

\setmainfont[%
    Path=fonts/,%
    Extension=.ttf,%
    UprightFont={*-Light},%
    ItalicFont={*-LightItalic},%
    BoldFont={*-SemiBold},%
    BoldItalicFont={*-SemiBoldItalic},%
    Scale=MatchLowercase,%
    Script=Thai,%
    WordSpace=1.25,%
    Mapping=tex-text,%
]{Sarabun}

\setmonofont[%
    Path=fonts/,%
    Extension=.otf,%
    UprightFont={*-Regular},%
    BoldFont={*-Bold},%
    Scale=MatchLowercase,%
    Contextuals=Alternate,%
]{FiraCode}
\def\verbatim@nolig@list{}

\newfontfamily\chapterfont[
    Path=fonts/,%
    Extension=.otf,%
    UprightFont={*-Light},%
    ItalicFont={*-LightItalic},%
    BoldFont={*-SemiBold},%
    BoldItalicFont={*-SemiBoldItalic},%
    Scale=1.5,%
    Script=Thai,%
    WordSpace=1.25,%
    Mapping=tex-text,%
]{Kanit}

\newfontfamily\sectionfont[
    Path=fonts/,%
    Extension=.ttf,%
    UprightFont={*-Regular},%
    ItalicFont={*-Italic},%
    BoldFont={*-ExtraBold},%
    BoldItalicFont={*-ExtraBoldItalic},%
    Scale=1.0,%
    Script=Thai,%
    WordSpace=1.25,%
    Mapping=tex-text,%
]{Sarabun}

\newfontfamily\codefont[%
    Path=fonts/,%
    Extension=.otf,%
    UprightFont={*-Regular},%
    BoldFont={*-Bold},%
    Scale=MatchLowercase,%
    Contextuals=Alternate,%
]{FiraCode}
\def\verbatim@nolig@list{}

\newfontfamily\commentfont[
    Path=fonts/,%
    Extension=.otf,%
    UprightFont={*-Book},%
    BoldFont={*-Bold},%
    Scale=MatchLowercase,%
    Script=Thai,%
    WordSpace=1.25,%
    Mapping=tex-text,%
]{FiraGO}

\newfontfamily\verbfont[
    Path=fonts/,%
    Extension=.otf,%
    UprightFont={*-Regular},%
    BoldFont={*-Bold},%
    Scale=MatchLowercase,%
    Ligatures={NoCommon,NoDiscretionary,NoHistoric,NoRequired,NoContextual},%
]{FiraMono}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Typographies ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[factor=1150]{microtype}
\newrobustcmd{\ltspc}{\addfontfeature{LetterSpace=5}}
\newrobustcmd{\twoemrule}{\rule[2.25pt]{2em}{0.5pt}}
\newrobustcmd{\threeemrule}{\rule[2.25pt]{3em}{0.5pt}}
\newrobustcmd{\ifpageodd}[2]{\ifodd\thepage{#1}\else{#2}\fi}

%%%%%%%%%%%%%%%%%%%%%%
%% ---- Colors ---- %%
%%%%%%%%%%%%%%%%%%%%%%

%% Color palette
\definecolor{KBTGGreen}{HTML}{1BA757}
\definecolor{KBTGRed}{HTML}{EB1E35}
\definecolor{KBTGSecondaryBlue}{HTML}{1B61A7}
\definecolor{KBTGSecondaryOrange}{HTML}{EB991E}
\definecolor{KBTGMainGray}{HTML}{4E4E4D}
\definecolor{KBTGMidGray}{HTML}{C7C7C7}
\definecolor{KBTGLightGray}{HTML}{FAFAFA}
\definecolor{KBTGLighterGreen}{HTML}{98F6C1}
\definecolor{KBTGLighterRed}{HTML}{F5ADB4}
\definecolor{KBTGLighterBlue}{HTML}{98C7F6}
\definecolor{KBTGLighterOrange}{HTML}{F5D7AD}

%% Color settings for listings
\colorlet{PrimaryKeyword}{RoyalBlue3}
\colorlet{SecondaryKeyword}{Red3}
\colorlet{TertiaryKeyword}{TealBlue}
\colorlet{Identifier}{black}
\colorlet{String}{Red3}
\colorlet{Symbol}{Ivory4!60!Gold4}
\colorlet{Comment}{Green4}

%% Color palette for this project
\colorlet{TJGreen}{SeaGreen1}
\colorlet{TJBlue}{SkyBlue1}
\colorlet{TJRed}{Pink1}
\colorlet{TJYellow}{NavajoWhite1}

%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Captions ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[%
  margin=1pc,font={rm,up,md,footnotesize},labelfont={bf},labelsep=period,%
  format=plain,indention=1pc,justification=justified]{caption}
\RequirePackage{subcaption}
\captionsetup{compatibility=false}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Lists and enumerations ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{enumitem}
\RequirePackage{alphalph}
\RequirePackage{multicol}
% \setlist{%
%   topsep=0pc,itemsep=0pc,partopsep=0pc,parsep=0pc,%
%   leftmargin=2pc,itemindent=0.25pc,listparindent=0.25in,%
%   labelindent=!,labelsep=0.5pc,%
% }
% \setlist[1]{%
%   topsep=0.25pc,itemsep=0.25pc,%
%   leftmargin=2pc,itemindent=0pc,%
% }
% \setlist[description]{
%   leftmargin=2pc,itemindent=*,listparindent=0.25in,%
%   labelindent=0pc,labelsep=1pc,%
% }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Headings and sections ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TODO
\RequirePackage{titlesec}
\setcounter{secnumdepth}{1}

\titleformat{\chapter}%
  [display]% shape
  {\relax\begin{fullwidth}}% format applied to label+text
  {\huge\chapterfont\bfseries หมวดที่ \thechapter}% label
  {1pc}% horizontal separation between label and title body
  {\huge\chapterfont\bfseries}% before the title body
  [\end{fullwidth}]% after the title body

% Define a new \question sectioning element
\titleclass{\question}{straight}[\chapter]
\newcounter{question}
\titleformat{\question}[runin]{\relax}{\large\sectionfont\bfseries คำถามที่ \thequestion.}{0.5pc}{\large\sectionfont}
\titlespacing*{\question}{0pt}{2.25pc plus 0.25pc minus 0.5pc}{0.5pc plus 0.25pc}
\newrobustcmd{\questionautorefname}{คำถามที่}

%%%%%%%%%%%%%%%%%%%%%%
%% ---- Tables ---- %%
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{booktabs}
\setlength{\heavyrulewidth}{1pt}
\setlength{\lightrulewidth}{0.5pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Text styles ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Underline styles
\RequirePackage{ulem}
\normalem

%% Verbatim mode
\RequirePackage{fancyvrb}
\DefineVerbatimEnvironment{plainvrb}{Verbatim}{fontfamily=FiraMono(0)}

%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Math mode ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{IEEEtrantools}
\RequirePackage{mathtools}
\RequirePackage{chemarrow}
\RequirePackage{adforn}  % Ornaments package
\RequirePackage{textcomp}
\RequirePackage{wasysym}
\RequirePackage{aliascnt}
\RequirePackage{cancel}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Math extra definitions ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define shorthands for mathematical sets
\newrobustcmd{\Algebraic}{\mathbb{A}}
\newrobustcmd{\Complex}{\mathbb{C}}
\newrobustcmd{\Field}{\mathbb{F}}
\newrobustcmd{\Natural}{\mathbb{N}}
\newrobustcmd{\Quotient}{\mathbb{Q}}
\newrobustcmd{\Real}{\mathbb{R}}
\newrobustcmd{\Zahlen}{\mathbb{Z}}

%% Define shorthand for overline
\newrobustcmd{\ol}{\overline}

%% Define shorthand for blocks
\newrobustcmd{\hlt}[2][LightGray!20]{%
  \ifmmode{\mathchoice%
      {\colorbox{#1}{$\displaystyle #2$}}%
      {\colorbox{#1}{$\textstyle #2$}}%
      {\colorbox{#1}{$\scriptstyle #2$}}%
      {\colorbox{#1}{$\scriptscriptstyle #2$}}}%
  \else%
      {\colorbox{#1}{#2}}%
  \fi}
\newrobustcmd{\rhlt}[1]{\hl[Red1!25]{#1}}
\newrobustcmd{\ghlt}[1]{\hl[Chartreuse3!25]{#1}}
\newrobustcmd{\bhlt}[1]{\hl[Blue1!10]{#1}}
\newrobustcmd{\yhlt}[1]{\hl[Yellow2!30]{#1}}

% Define some more math operators
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator*{\argmax}{arg{\hrsp}max}
\DeclareMathOperator*{\argmin}{arg{\hrsp}min}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Code listings ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{listings}
\RequirePackage{lstfiracode}
\lstset{%
  % Basic Settings
  basicstyle=\ttfamily,%
  captionpos=b,%
  % Margins and Background
  xleftmargin=2.5pc,%
  xrightmargin=1.5pc,%
  frame=none,%
  framesep=0.5pc,%
  framextopmargin=0pc,%
  framexbottommargin=0pc,%
  framexleftmargin=0pc,%
  framexrightmargin=0pc,%
  % Spacing and Horizontal Flow
  showspaces=false,%
  showstringspaces=false,%
  showtabs=false,%
  tabsize=2,%
  breaklines=true,%
  columns=fullflexible,%
  keepspaces=true,%
  % Vertical Flow
  aboveskip=\bigskipamount,%
  belowskip=\medskipamount,%
  abovecaptionskip=\medskipamount,%
  belowcaptionskip=\smallskipamount,%
  lineskip=0.0001pt,
  % Line Numbers
  stepnumber=1,%
  numbers=left,%
  numbersep=1pc,%
  numberstyle=\ttfamily\color{DarkGray},%
  % Special Keyword Format
  stringstyle=\color{String},%
  commentstyle=\color{Comment},%
  identifierstyle=\color{Identifier},%
  keywordstyle=[1]{\bfseries\color{PrimaryKeyword}},%
  keywordstyle=[2]{\bfseries\color{SecondaryKeyword}},%
  keywordstyle=[3]{\bfseries\color{TertiaryKeyword}},%
  extendedchars=true}
\captionsetup[lstlisting]{margin={2pc,-3.00001pc},oneside}
\renewrobustcmd\lstlistingname{Source Code}
\newrobustcmd{\lstnumberautorefname}{Line}

\let\origthelstnumber\thelstnumber
\newrobustcmd*\SuppressNumber{%
    \lst@AddToHook{OnNewLine}{%
        \let\thelstnumber\relax%
        \advance\c@lstnumber-\@ne\relax}}
\newrobustcmd*\ReactivateNumber{%
    \lst@AddToHook{OnNewLine}{%
        \let\thelstnumber\origthelstnumber%
        \advance\c@lstnumber\@ne\relax}}
\newrobustcmd*\ActivateNumber[1]{%
    \setcounter{lstnumber}{\numexpr#1-1\relax}
    \lst@AddToHook{OnNewLine}{%
        \let\thelstnumber\origthelstnumber%
        \refstepcounter{lstnumber}}}
\newrobustcmd*\AlternateNumber[1]{%
    \lst@AddToHook{OnNewLine}{%
        \gdef\thelstnumber{#1}}}

\lstdefinelanguage{pseudocode}{%
    keywordstyle=[1]{\bfseries\color{PrimaryKeyword}},%
    keywordstyle=[2]{\bfseries\color{SecondaryKeyword}},%
    keywordstyle=[3]{\bfseries\color{TertiaryKeyword}},%
    morekeywords=[1]{%
        function,procedure,return,halt,terminate,exit,%
        for,each,to,downto,loop,while,do,repeat,until,break,continue,end,%
        if,then,else,elseif,case,matches},%
    morekeywords=[2]{%
        input,output,print,and,or,not,xor,div,mod,%
        is,in,max,min,sum,swap,floor,ceil},%
    morekeywords=[3]{true,false,empty,nil,lambda},%
    sensitive=false,%
    morestring=[b]",%
    morestring=[b]',%
    morecomment=[l]{\#},%
    literate=*%
        %% Single character
        {:}{{{\bfseries\color{Symbol}{:}}}}1
        ,
    mathescape=true,%
    escapeinside={<\%}{\%>},%
}

%% Set default listing language
\lstset{language=pseudocode}
\newrobustcmd{\codecmt}{\commentfont\color{Comment}}

%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Datetime ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[datesep={-},timesep={:},showseconds=false,showzone=false]{datetime2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Lorem Ipsum ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{lipsum}

%%%%%%%%%%%%%%%%%%%%%%%%
%% ---- Drawings ---- %%
%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{tikz}
\newrobustcmd*\choicecirc[1]{%
\begin{tikzpicture}[baseline=-0.3em]
\node[draw,circle,inner sep=1pt,minimum size=2.25ex](x) {\scriptsize\color{black!30}{#1}};
\end{tikzpicture}}
\newrobustcmd*\choicerect[1]{%
\begin{tikzpicture}[baseline=-0.35em]
\node[draw,rectangle,inner sep=1pt,minimum size=2ex](x) {\scriptsize\color{black!30}{#1}};
\end{tikzpicture}}
