\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cvclass}[2018/10/15 My custom CV class]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{mdwlist}
\usepackage{tabu}
\RequirePackage[margin=0.5in]{geometry}
\pagenumbering{gobble}

\titleformat{\section}         % Customise the \section command
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]
  \titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{
  \section[#1]{\textbf{#1} \hfill #2}
}

\newcommand{\datedsubsection}[2]{
  \subsection[#1]{\begin{tabu} to \linewidth {@{} X[l,p] X[r,p] @{}}
	\textbf{#1} & \textbf{#2}\\
\end{tabu}}
}

\newcommand{\datedjob}[3]{
\subsection[#1]{\begin{tabu} to 1\textwidth {@{} X[l,p] X[c,p] X[r,p] @{}}
	\textbf{#1} & \textbf{#2} & \textbf{#3} \\
\end{tabu}}
}


\newcommand{\grade}[2]{
  #1 { \hfill#2\hfill}
}

\newcommand{\gradeprime}[2]{
  #1 { \hfill#2}
}

\newcommand{\module}[2]{

}

\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

\newcommand{\address}[1]{
  \centerline{#1}
}



