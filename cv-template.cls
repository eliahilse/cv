\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv-template}[2026/02/12 CV Template]

\LoadClass[10pt, a4paper]{article}

\RequirePackage[margin=0.5in, top=0.4in, bottom=0.4in]{geometry}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontenc}
\RequirePackage{lmodern}
\RequirePackage{xcolor}
\RequirePackage{parskip}
\RequirePackage{graphicx}

% inline icon vertically centered to text
\newcommand{\icon}[1]{%
  \raisebox{-0.1em}{\includegraphics[height=0.85em]{icons/#1}}%
}

\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

\titleformat{\section}{\normalsize\bfseries\uppercase}{}{0pt}{}[\vspace{-0.6em}\rule{\textwidth}{0.4pt}]
\titlespacing{\section}{0pt}{1.2em}{0.3em}

% header: name + subtitle line
\newcommand{\cvheader}[2]{%
  \begin{center}
    {\Large\bfseries #1} \\[0.8em]
    {\small #2}
  \end{center}
  \vspace{-0.4em}
}

% entry: title, right-top, subtitle, right-bottom
\newcommand{\entry}[4]{%
  \textbf{#1} \hfill #2 \\[-0.2em]
  \textit{#3} \hfill \textit{#4}
}

% skills row: label + content
\newcommand{\skillrow}[2]{%
  \textbf{#1:} #2
}

% tight item list
\newenvironment{tightlist}{%
  \begin{itemize}[nosep, leftmargin=1.5em, topsep=0.1em, parsep=0pt, itemsep=0pt]
}{%
  \end{itemize}
}

\endinput
