\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{reportTemplateOxford}[2025/03/11 template for Oxford 3YP and 4YP]

\LoadClass[11pt]{article}

% Inport all packages and acronyms
\input{preamble}
\input{glossary}

% Set uni guideline style
\doublespacing
\setmainfont{Arial}
\pagenumbering{roman}

% Intro pages
\pagestyle{fancy}
\fancyhead[L]{} % Left side of the header
\fancyhead[C]{} % Center of the header (optional)
\fancyhead[R]{} % Right side of the header (optional)


\makeglossaries

\newcommand{\subtitle}[1]{\def\@subtitle{#1}} 


\renewcommand{\maketitle}{
\begin{titlepage}
    % Add the background pdf
    \begin{figure}
        \centering 
        \includepdf[pages=-]{figs/Title.pdf}
    \end{figure}
    \centering
    \vspace*{3cm}
    \Huge
    \textbf{\@title}

    \vspace{2.5cm}
    \Large
    \textbf{\@author}
    
    \@date
    \vfill
    \thispagestyle{empty} % Suppress page number on the title page
\end{titlepage}
}



\newcommand{\printbibliography}[2]{
\begingroup\onehalfspacing
{\small
\begin{multicols}{2}
\bibliographystyle{IEEEtran}
\bibliography{#1}
\end{multicols}}
\endgroup
}
