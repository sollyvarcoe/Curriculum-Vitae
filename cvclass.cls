\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cvclass}[2018/10/15 My custom CV class]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage[margin=0.5in]{geometry}

\titleformat{\section}         % Customise the \section command
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]

  \titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\grade}[2]{
  #1 {\raggedleft\hfill #2} \newline
}

\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

\newcommand{\address}[1]{
  \centerline{#1}
}
