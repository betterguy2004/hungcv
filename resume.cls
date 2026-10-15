%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Vignesh Iyer                                 %
% MS CSE ASU                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2023/01/11 v0.2 Resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage[left=0.5in,top=0.4in,right=0.5in,bottom=0.4in]{geometry} % set document margins
\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{xcolor}
\usepackage{etoolbox}
\usepackage{keycommand}
\usepackage{xstring}
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    urlcolor=black,
}

% Use Unicode-capable fonts for Vietnamese when compiled with XeLaTeX/LuaLaTeX.
\usepackage{iftex}
\ifPDFTeX
    \usepackage[utf8]{inputenc}
    \usepackage[T5]{fontenc}
    \usepackage[scaled]{helvet}
\else
    \usepackage{fontspec}
    \setsansfont{Arial}
\fi
\renewcommand\familydefault{\sfdefault} % Set the font family to sans-serif

\pagestyle{empty}
\frenchspacing % Use uniform spacing after periods (avoid oversized sentence gaps)

% -------------- README --------------
% Visit https://github.com/vgnshiyer/ASU-sparkysundevil-resume-template for comprehensive documenation.

% ------------ Utilities ------------

\def \separator {
    \textbf{\Large\textbullet}
}

\newcommand{\email}[1]{\href{mailto:#1}{#1}}%
\newcommand{\profilelink}[1]{\href{https://#1}{#1}}%

\newcommand{\isA}[1]{
    \expandafter\ifstrequal\expandafter{#1}{default}{}{a}
}

\newcommand\sectionTitle[1]{%
    \begingroup
        \textbf{\MakeUppercase{#1}}
        \vspace{0.4em}
        \hrule
        \vspace{-0.3em}
    \endgroup
}%

% ------------------------------------

% ------------- Header --------------
\newcommand\printNameTitle[1]{%
    \begingroup
        \hfill{\MakeUppercase{\Huge\bfseries #1}}\hfill
        \break
        \vspace{-0.5em}
        \hrule
    \endgroup
}%

\newkeycommand{\introduction}[
    fullname,
    email,
    phone,
    linkedin
]{%
    \begin{center}%
\printNameTitle{\commandkey{fullname}}% Full name title
{%
\expandafter\ifstrequal\expandafter{phone}{}{}% Contact number
{%
\ifcommandkey{phone}{\commandkey{phone}}{}%
\expandafter\ifstrequal\expandafter{email}{}%
{%
\expandafter\ifstrequal\expandafter{linkedin}{}%
{%
% empty
}{\separator}%
}{\separator}%
}% Contact number field ends here
\expandafter\ifstrequal\expandafter{email}{}{}% Email
{%
\email{\commandkey{email}}%
\expandafter\ifstrequal\expandafter{linkedin}{}%
{%
% empty
}{\separator}%
}% Email fields ends here
\expandafter\ifstrequal\expandafter{linkedin}{}{}% Linkedin
{%
\profilelink{\commandkey{linkedin}}%
}% Linkedin field ends here
}
\end{center}%
}%

% -----------------------------------

% ------------ Summary --------------
\newcommand{\summary}[1]{%
    \sectionTitle{Summary}%
    #1
}%

% -----------------------------------

% ------------ Education ------------
\newenvironment{educationSection}[1]{%
    \sectionTitle{#1}%
}%

\newkeycommand{\educationItem}[
    university,
    program,
    graduation,
    grade,
    coursework
]{%
    {% line 1
        \bf \commandkey{program}%
    } \hfill {%
          \commandkey{graduation}%
    } \\ % line end
    {% line 2
        \commandkey{university}%
    } \hfill \ifcommandkey{grade}{% Grade field is optional (Can be left empty)
        \commandkey{grade}%
    }{} \\ % line end
    {% line 4
        Relevant coursework: \commandkey{coursework}%
    }% line end
}%

% ------------------------------------

% -------------- Skills --------------
\newenvironment{skillsSection}[1]{%
    \sectionTitle{#1}%
}%

\newkeycommand{\skillItem}[
    category,
    skills
]{%
    {%
        \bf \commandkey{category}:
    } {%
        \commandkey{skills}%
    }
}%

% ------------------------------------

% -------------- Experience -------------
\newenvironment{experienceSection}[1]{%
    \sectionTitle{#1}%
    \begin{list}{}{ % List for each highlight in the section
        \setlength{\leftmargin}{0em} % Margin within the section
    }%
        \item[]%
    }{%
    \end{list}%
}%

\newkeycommand{\experienceItem}[
    company,
    position,
    location,
    duration
]{%
    \textbf{%
        \commandkey{company},
        \commandkey{location}:
        \commandkey{position}
    } \hfill {%
        \commandkey{duration}%
    }
    \vspace{-0.5em}%
}%

% ---------------------------------------

% ----------------- Project -------------
\newkeycommand{\projectItem}[title, keyHighlight,duration,team]{%
    \textbf{\commandkey{title}} \hfill \commandkey{duration} \\
    \textit{Team Size: \commandkey{team}} \\
    \commandkey{keyHighlight}
}
\newkeycommand{\projectItemm}[title,keyHighlight, duration]{%
      \textbf{\commandkey{title}} \hfill \commandkey{duration} \\
    \commandkey{keyHighlight}
}
\newkeycommand{\awardItem}[title,duration]{%
    \textbf{\commandkey{title}} \hfill \commandkey{duration}%
}

% -------------- References (compact, right-aligned contact) --------------
\newkeycommand{\referenceItem}[
    name,
    title,
    org,
    email,
    phone,
    relation
]{%
    \noindent
    \begin{minipage}[t]{0.72\linewidth}
        \textbf{\commandkey{name}} -- \commandkey{title}, \commandkey{org}\\[-0.2em]
        \ifcommandkey{relation}{\textit{\commandkey{relation}}}{}
    \end{minipage}%
    \hfill
    \begin{minipage}[t]{0.26\linewidth}\raggedleft
        \ifcommandkey{phone}{\commandkey{phone}\\[-0.2em]}{}%
        \ifcommandkey{email}{\email{\commandkey{email}}}{}%
    \end{minipage}\par\vspace{0.2em}
}



% ----------------------------------------
