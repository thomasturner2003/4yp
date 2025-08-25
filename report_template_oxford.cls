\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{reportTemplateOxford}[2025/03/11 template for Oxford 3YP and 4YP]

\LoadClass[11pt]{article}

% Inport all packages
\input{preamble}

% Set uni guideline style
\doublespacing
\setmainfont{Arial}

% Intro pages
\pagestyle{fancy}
\fancyhead[L]{} % Left side of the header
\fancyhead[C]{} % Center of the header (optional)
\fancyhead[R]{} % Right side of the header (optional)


\makeglossaries

\newcommand{\subtitle}[1]{\def\@subtitle{#1}} 

\renewcommand{\maketitle}{
\begin{titlepage}
    \centering
    \vspace*{1cm}

    \includegraphics[width=0.4\textwidth]{figs/oxford_logo.png}

    \vspace*{1cm}

    \Huge
    \textbf{\@title}

    \vspace{0.5cm}
    \LARGE
    \@subtitle

    \vfill

    \vspace{1.5cm}

    \textbf{\@author}

    \Large
    \@date

    \thispagestyle{empty} % Suppress page number on the title page
\end{titlepage}
}

\newcommand{\printbibliography}[2]{
\begingroup\onehalfspacing
{\small
\begin{multicols}{2}
\bibliographystyle{plain}
\bibliography{#1}
\end{multicols}}
\endgroup
}
