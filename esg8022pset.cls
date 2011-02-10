%%
%% This is file `esg8022pset.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% esg8022pset.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2010 by Jason Gross
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.2 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%%   http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of
%% LaTeX version 1999/12/01 or later.
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{esg8022pset}
 [2011/02/09 v0.1c ESG PSet Template]
\LoadClass[notitlepage,11pt,twoside,letterpaper]{article}
\RequirePackage{fancyhdr}
\RequirePackage[T1]{fontenc}
\RequirePackage{lastpage}
\RequirePackage{xifthen}
\RequirePackage{verbatim}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{etoolbox,etextools}
\newboolean{esg8022pset@solutions}\newboolean{esg8022pset@problems}
\newboolean{esg8022pset@pdfproblems}\newboolean{esg8022pset@pdfsolutions}
\DeclareOption{problems}{\setboolean{esg8022pset@problems}{true}\setboolean{esg8022pset@solutions}{false}}
\DeclareOption{solutions}{\setboolean{esg8022pset@problems}{false}\setboolean{esg8022pset@solutions}{true}}
\DeclareOption{makeproblemspdf}{\setboolean{esg8022pset@pdfproblems}{true}}
\DeclareOption{makesolutionspdf}{\setboolean{esg8022pset@pdfsolutions}{true}}
\DeclareOption{makeallpdfs}{\setboolean{esg8022pset@pdfproblems}{true}\setboolean{esg8022pset@pdfsolutions}{true}}
\ProcessOptions\relax
\ifthenelse{\boolean{esg8022pset@problems} \OR \boolean{esg8022pset@solutions}}{
}{
  \expandnext{\renewcommand{\end}[1]}{\end{#1}\ifcsname end#1@hook\endcsname\csname end#1@hook\endcsname\else\fi}

  \newcommand{\AfterEnvironment}[2]{%
    \ifcsname end#1@hook\endcsname
    \else
      \csdef{end#1@hook}{}%
    \fi
    \csappto{end#1@hook}{#2}%
  }

  \newwrite\esgpset@problemsout
  \newwrite\esgpset@solutionsout
  \newwrite\esgpset@tempout
  \newcommand{\esgpset@compilefile}[1]{\write18{pdflatex "#1"}}
  \edef\esgpset@problemsfilename{\jobname\string_Problems.tex}
  \edef\esgpset@solutionsfilename{\jobname\string_Solutions.tex}
  \edef\esgpset@tempfilename{\jobname.tmp}
  \newcommand{\writetoboth}[1]{\writetoproblems{#1}%
    \writetosolutions{#1}}
  \newcommand{\writetoall}[1]{\writetoboth{#1}\writetothis{#1}}
  \newcommand{\writetoproblems}[1]{\immediate\write\esgpset@problemsout{#1}}
  \newcommand{\writetosolutions}[1]{\immediate\write\esgpset@solutionsout{#1}}
  \newcommand{\writetothis}[1]{{\edef\temp{#1}\expandafter}\expandafter\scantokens\expandafter{\temp}}
  \newcommand{\pre@writetothis}[1]{\gdef\esgpset@curcode{}}%\immediate\openout\esgpset@tempout\esgpset@tempfilename
  \newcommand{\do@writetothis}[1]{\gappto\esgpset@curcode{#1^^J}}%\immediate\write\esgpset@tempout{\unexpanded{#1}}
  \newcommand{\post@writetothis}[1]{\expandnext{\scantokens}{\esgpset@curcode}}%\immediate\closeout\esgpset@tempout\input{\esgpset@tempfilename}%

  \immediate\openout\esgpset@problemsout\esgpset@problemsfilename
  \immediate\openout\esgpset@solutionsout\esgpset@solutionsfilename

  \AtEndDocument{
    \writetoboth{\string\end{document}}
    \immediate\closeout\esgpset@problemsout
    \immediate\closeout\esgpset@solutionsout
    \ifthenelse{\boolean{esg8022pset@pdfsolutions}}{\esgpset@compilefile{\esgpset@solutionsfilename}}{}
    \ifthenelse{\boolean{esg8022pset@pdfproblems}}{\esgpset@compilefile{\esgpset@problemsfilename}}{}
  }

  \begingroup
    \writetosolutions{%
      \string\documentclass[solutions]{esg8022pset}
    }
    \writetoproblems{%
      \string\documentclass[problems]{esg8022pset}
    }
  \endgroup

  \newenvironment{preamble}{%
    \begingroup% Lets Keep the Changes Local
      \immediate\openout\esgpset@tempout\esgpset@tempfilename
      \@bsphack
      \let\do\@makeother\dospecials\catcode`\^^M\active
      \def\verbatim@processline{\writetoboth{\the\verbatim@line}\immediate\write\esgpset@tempout{\the\verbatim@line}}
      \verbatim@start
  }{\@esphack\immediate\closeout\esgpset@tempout\endgroup}
  \AfterEnvironment{preamble}{\input{\esgpset@tempfilename}}

  \AtBeginDocument{

    \begingroup
      \writetoboth{%
        \string\classname{\expandafter\unexpanded\expandafter{\@classname}}^^M
        \string\semester{\expandafter\unexpanded\expandafter{\@semester}}
      }
      \writetoboth{%
        \string\problemsetnumber{\expandafter\unexpanded\expandafter{\@problemsetnumber}}
      }
      \writetoboth{%
        \string\date{\expandafter\unexpanded\expandafter{\@date}}
      }
      \writetoboth{%
        \string\duedate{\expandafter\unexpanded\expandafter{\@duedate}}
      }
      \writetoboth{%
        \string\readingassignment{\expandafter\unexpanded\expandafter{\@readingassignment}}
      }
      \writetoboth{%
        \string\psettitle{\expandafter\unexpanded\expandafter{\@psettitle}}
      }
      \writetoboth{\string\begin{document}}
    \endgroup
  }
}

\pagestyle{fancy}
\headheight 14.5pt
\fancyhead{}
\fancyfoot{}
\cfoot{\thepage\space of \pageref{LastPage}}

\let\@seccntformat\@gobble

\AtBeginDocument{
  \begingroup
    \def\@headerextra{%
      \xifblank{\@psettitle}{}{%
        (\@psettitle)\space
      }%
    }%
    \ifthenelse{\boolean{esg8022pset@problems}}{%
      \edef\@cheader{Problem Set \@problemsetnumber\space\@headerextra - Problems}
    }{
      \ifthenelse{\boolean{esg8022pset@solutions}}{
        \edef\@cheader{Problem Set \@problemsetnumber\space\@headerextra - Solutions}
      }{
        \edef\@cheader{Problem Set \@problemsetnumber\space\@headerextra - Problems}
      }
    }
  \expandafter\endgroup
  \expandafter\chead\expandafter{\@cheader}
  \begingroup
    \bf
    \begin{center}%
      {\noindent  \textsc{Massachusetts Institute of Technology} \par}%
      {\noindent  Experimental Study Group \par}%
    \end{center}%
    {\noindent  \@classname, \@semester \par}%
    \begin{center}%
      {\noindent \Large
        Problem Set \@problemsetnumber
        \ifthenelse{\boolean{esg8022pset@solutions}}{% \OR \NOT \boolean{esg8022pset@problems}{%
          \space Solutions%
        }{}%
      \par}%
      \xifblank{\@psettitle}{}{%
        {\noindent \Large \@psettitle\par}%
      }%
    \end{center}%
    {\noindent Due: \@duedate}%
    \xifblank{\@readingassignment}{}{%
      \\\\
      {\noindent Reading: \@readingassignment \par}%
    }%
  \endgroup
  \global\let\duedate\relax
  \global\let\problemsetnumber\relax
  \global\let\semester\relax
  \global\let\classname\relax
  \global\let\readingassignment\relax
  \global\let\psettitle\relax
  \global\let\@duedate\relax
  \global\let\@problemsetnumber\relax
  \global\let\@semester\relax
  \global\let\@classname\relax
  \global\let\@readingassignment\relax
  \global\let\@psettitle\relax
}
\newcommand*{\duedate}[1]{\gdef\@duedate{#1}}
\newcommand*{\problemsetnumber}[1]{\gdef\@problemsetnumber{#1}}
\newcommand*{\semester}[1]{\gdef\@semester{#1}}
\newcommand*{\classname}[1]{\gdef\@classname{#1}}
\newcommand*{\readingassignment}[1]{\gdef\@readingassignment{#1}}
\readingassignment{}
\newcommand*{\psettitle}[1]{\gdef\@psettitle{#1}}
\newenvironment{problem}[2][\relax]{%
  \ifthenelse{\equal{#1}{\relax}}{%
    \writetoall{\string\section{Problem \string\thesection: #2}}%
  }{%
    \writetoall{\string\section*{Problem #1: #2}}%
  }%
  \writetosolutions{\string\subsection{Problem}}%
  \begingroup% Lets Keep the Changes Local
    \pre@writetothis
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\writetoboth{\the\verbatim@line}\expandnext{\do@writetothis}{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup
  \post@writetothis
  \relax% not sure why I need this...
}
\newenvironment{solution}{%
  \writetosolutions{\string\subsection{Solution}}%
  \begingroup% Lets Keep the Changes Local
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\writetosolutions{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup}%
\newenvironment{ForProblems}{%
  \begingroup% Lets Keep the Changes Local
    \pre@writetothis
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\writetoproblems{\the\verbatim@line}\expandnext{\do@writetothis}{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup
  \post@writetothis
  \relax% not sure why I need this...
}
\newenvironment{ForPSet}{%
  \begingroup% Lets Keep the Changes Local
    \pre@writetothis
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\writetoboth{\the\verbatim@line}\expandnext{\do@writetothis}{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup
  \post@writetothis
  \relax% not sure why I need this...
}
\newenvironment{ForSolutions}{%
  \begingroup% Lets Keep the Changes Local
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\writetosolutions{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup}%
\endinput
%%
%% End of file `esg8022pset.cls'.
