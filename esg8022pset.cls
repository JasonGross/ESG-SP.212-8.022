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
 [2011/03/13 v0.1f ESG PSet Template]
\LoadClass[notitlepage,11pt,twoside,letterpaper]{article}
\RequirePackage{fancyhdr}
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
  \expandnext{\renewcommand{\end}[1]}{\end{#1}\ifcsdef{end#1@hook}{\csname end#1@hook\endcsname}{}}

  \newcommand{\AfterEnvironment}[2]{%
    \ifcsdef{end#1@hook}{}{%
      \csdef{end#1@hook}{}%
    }%
    \csappto{end#1@hook}{#2}%
  }

  \newwrite\esgpset@problemsout
  \newwrite\esgpset@solutionsout
  %\newwrite\esgpset@tempout
  \newcommand{\esgpset@compilefile}[1]{\write18{pdflatex "#1"}}
  \edef\esgpset@problemsfilename{\jobname\string_Problems.tex}
  \edef\esgpset@solutionsfilename{\jobname\string_Solutions.tex}
  %\edef\esgpset@tempfilename{\jobname.tmp}
  \newcommand{\esgpset@writetoboth}[1]{\esgpset@writetoproblems{#1}%
    \esgpset@writetosolutions{#1}}
  \newcommand{\esgpset@writetoall}[1]{\esgpset@writetoboth{#1}\esgpset@writetothis{#1}}
  \newcommand{\esgpset@writetoproblems}[1]{\immediate\write\esgpset@problemsout{#1}}
  \newcommand{\esgpset@writetosolutions}[1]{\immediate\write\esgpset@solutionsout{#1}}
  \newcommand{\esgpset@writetothis}[1]{{\edef\temp{#1}\expandafter}\expandafter\scantokens\expandafter{\temp}}
  \newcommand{\esgpset@pre@writetothis}{\gdef\esgpset@curcode{}}%\immediate\openout\esgpset@tempout\esgpset@tempfilename
  \newcommand{\esgpset@do@writetothis}[1]{\expandnext{\gappto\esgpset@curcode}{#1^^J}}%\immediate\write\esgpset@tempout{\unexpanded{#1}}
  \newcommand{\esgpset@post@writetothis}{\expandnext{\scantokens}{\esgpset@curcode}}%\immediate\closeout\esgpset@tempout\input{\esgpset@tempfilename}%

  \immediate\openout\esgpset@problemsout\esgpset@problemsfilename
  \immediate\openout\esgpset@solutionsout\esgpset@solutionsfilename

  \AtEndDocument{
    \esgpset@writetoboth{\string\end{document}}
    \immediate\closeout\esgpset@problemsout
    \immediate\closeout\esgpset@solutionsout
    \ifthenelse{\boolean{esg8022pset@pdfsolutions}}{\esgpset@compilefile{\esgpset@solutionsfilename}}{}
    \ifthenelse{\boolean{esg8022pset@pdfproblems}}{\esgpset@compilefile{\esgpset@problemsfilename}}{}
  }

  \begingroup
    \esgpset@writetosolutions{%
      \string\documentclass[solutions]{esg8022pset}
    }
    \esgpset@writetoproblems{%
      \string\documentclass[problems]{esg8022pset}
    }
  \endgroup

  \newenvironment{preamble}{%
    \begingroup% Lets Keep the Changes Local
      \esgpset@pre@writetothis%
      \@bsphack
      \let\do\@makeother\dospecials\catcode`\^^M\active
      \def\verbatim@processline{\esgpset@writetoboth{\the\verbatim@line}\esgpset@do@writetothis{\the\verbatim@line}}%
      \verbatim@start
  }{\@esphack\endgroup\aftergroup\esgpset@post@writetothis\relax}

  \AtBeginDocument{

    \begingroup
      \esgpset@writetoboth{%
        \string\classname{\expandafter\unexpanded\expandafter{\@classname}}^^M%
        \string\semester{\expandafter\unexpanded\expandafter{\@semester}}
      }
      \esgpset@writetoboth{%
        \string\problemsetnumber{\expandafter\unexpanded\expandafter{\@problemsetnumber}}%
      }
      \esgpset@writetoboth{%
        \string\date{\expandafter\unexpanded\expandafter{\@date}}%
      }
      \esgpset@writetoboth{%
        \string\duedate{\expandafter\unexpanded\expandafter{\@duedate}}%
      }
      \esgpset@writetoboth{%
        \string\readingassignment{\expandafter\unexpanded\expandafter{\@readingassignment}}%
      }
      \esgpset@writetoboth{%
        \string\problemsettitle{\expandafter\unexpanded\expandafter{\@problemsettitle}}%
      }
      \esgpset@writetoboth{\string\begin{document}}
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
      \xifblank{\@problemsettitle}{}{%
        (\@problemsettitle)\space
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
      {\noindent \fontencoding{T1}\selectfont % allow bold textsc
        \textsc{Massachusetts Institute of Technology} \par}%
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
      \xifblank{\@problemsettitle}{}{%
        {\noindent \Large \@problemsettitle\par}%
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
  \global\let\problemsettitle\relax
  \global\let\@duedate\relax
  \global\let\@problemsetnumber\relax
  \global\let\@semester\relax
  \global\let\@classname\relax
  \global\let\@readingassignment\relax
  \global\let\@problemsettitle\relax
}
\newcommand*{\duedate}[1]{\gdef\@duedate{#1}}
\newcommand*{\problemsetnumber}[1]{\gdef\@problemsetnumber{#1}}
\newcommand*{\semester}[1]{\gdef\@semester{#1}}
\newcommand*{\classname}[1]{\gdef\@classname{#1}}
\newcommand*{\readingassignment}[1]{\gdef\@readingassignment{#1}}
\readingassignment{}
\newcommand*{\problemsettitle}[1]{\gdef\@problemsettitle{#1}}
\newenvironment{problem}[2][\relax]{%
  \ifthenelse{\equal{#1}{\relax}}{%
    \esgpset@writetoall{\string\section{Problem \string\thesection: \unexpanded{#2}}}%
  }{%
    \esgpset@writetoall{\string\section*{Problem #1: \unexpanded{#2}}}%
  }%
  \esgpset@writetosolutions{\string\subsection{Problem}}%
  \begingroup% Lets Keep the Changes Local
    \esgpset@pre@writetothis
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\esgpset@writetoboth{\the\verbatim@line}\esgpset@do@writetothis{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup\esgpset@post@writetothis}
\newenvironment{solution}{%
  \esgpset@writetosolutions{\string\subsection{Solution}}%
  \begingroup% Lets Keep the Changes Local
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\esgpset@writetosolutions{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup}%
\newenvironment{ForProblems}{%
  \begingroup% Lets Keep the Changes Local
    \esgpset@pre@writetothis
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\esgpset@writetoproblems{\the\verbatim@line}\esgpset@do@writetothis{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup\esgpset@post@writetothis}
\newenvironment{ForPSet}{%
  \begingroup% Lets Keep the Changes Local
    \esgpset@pre@writetothis
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\esgpset@writetoboth{\the\verbatim@line}\esgpset@do@writetothis{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup\esgpset@post@writetothis}
\newenvironment{ForSolutions}{%
  \begingroup% Lets Keep the Changes Local
    \@bsphack
    \let\do\@makeother\dospecials\catcode`\^^M\active
    \def\verbatim@processline{\esgpset@writetosolutions{\the\verbatim@line}}%
    \verbatim@start
}{\@esphack\endgroup}%
\endinput
%%
%% End of file `esg8022pset.cls'.
