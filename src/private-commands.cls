\ProvidesClass{private-commands}
\LoadClass{article}

\RequirePackage{enumitem}
\RequirePackage{fontawesome}
\RequirePackage{fontspec}
\RequirePackage{geometry}
\RequirePackage{hyperref}
\RequirePackage{pgfkeys}
\RequirePackage[document]{ragged2e}
\RequirePackage{tabularx}
\RequirePackage{xifthen}

\newcommand{\sectionheader}[1]{\vspace*{6px}{\fontsourcesanspro{\LARGE{\textbf{#1}}}}\vspace*{-2px}}

\newcommand{\listitem}[2]{\item[#1]#2}
\newcommand{\bulletitemindented}[1]{\listitem{$\phantom{}$}#1}

\newcommand{\socialemail}[1]{\faEnvelope\socialvaluedelimiter\href{mailto:#1}{#1}}
\newcommand{\sociallinkedin}[1]{\faLinkedin\socialvaluedelimiter\href{https://www.linkedin.com/in/#1/}{#1}}
\newcommand{\socialskype}[1]{\faSkype\socialvaluedelimiter\href{skype:#1}{#1}}
\newcommand{\socialdelimiter}[0]{\hspace{4px}}
\newcommand{\socialvaluedelimiter}[0]{{ }$\cdot${ }}

\newcommand{\ifnot}[2]{\ifthenelse{#1}{}{#2}}

\newcommand{\fontsourcesanspro}[1]{\fontspec[Path = fonts/, Extension = .ttf, BoldFont = *-SemiBold, UprightFont = *-Light, UprightFeatures = {Scale = 0.9}]{SourceSansPro}{#1}}
\newcommand{\fontjost}[1]{\fontspec[Path = fonts/, BoldFont = *-SemiBold, Extension = .ttf]{Jost}{#1}}
\newcommand{\fontoswald}[1]{\fontspec[Path = fonts/, UprightFont = *-Light, Extension = .ttf]{Oswald}{#1}}