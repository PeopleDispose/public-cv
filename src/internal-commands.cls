\ProvidesClass{internal-commands}
\LoadClass{private-commands}

\newcommand{\companyexperience}[1]
{
	\def\experienceposition{}
	\def\experiencecompany{}
	\def\experiencedate{}
	\def\experienceresponsibilities{}
	\def\experiencetechnologies{}
	\pgfkeys{/experience position/.cd,#1,print}
}
\pgfkeys
{
	/experience position/.is family, /experience position,
	position/.store in=\experienceposition,
	company/.store in=\experiencecompany,
	date/.store in=\experiencedate,
	responsibilities/.store in=\experienceresponsibilities,
	technologies/.store in=\experiencetechnologies,
	print/.code=
	{
		\par\noindent
		\begin{tabularx}{\columnwidth}{@{}X r@{}}
			{\fontsourcesanspro\large\textbf{\experienceposition}} & {\fontsourcesanspro \experiencedate} \\
			{\fontsourcesanspro\large \experiencecompany} & {}
		\end{tabularx}
		\par
		
		\ifthenelse
		{\not\equal{\experienceresponsibilities}{} \OR \not\equal{\experiencetechnologies}{}}
		{
			\itemlist
			{
				\ifthenelse
				{\not\equal{\experienceresponsibilities}{}}
				{\bulletitemindented{\experienceresponsibilities}}
				{}
				
				\ifthenelse
				{\not\equal{\experiencetechnologies}{}}
				{\bulletitemindented{\emph{Key technologies}: \experiencetechnologies}}
				{}
			}
		}
		{}
		
		\vspace{5pt}
	}
}

\newcommand{\tabulardata}[1]
{
	\pgfkeys{/tabular data,header,location,date,description,#1,print}
}
\pgfkeys
{
	/tabular data/.is family, /tabular data,
	header/.store in=\header,
	location/.store in=\location,
	date/.default=,
	date/.store in=\date,
	description/.store in=\description,
	print/.code=
	{
		\ifthenelse
			{\equal{\location}{}}
			{
				\begin{tabularx}{\columnwidth}{c X c}
					\fontsourcesanspro{\large{\textbf{\header}}}	& {} & \fontsourcesanspro{\hfill{\date}}
				\end{tabularx}
				\vspace{-10px}
			}
			{
				\begin{tabularx}{\columnwidth}{c X X c}
					\multicolumn{2}{l}{\fontsourcesanspro{\large{\textbf{\header}}}\vspace{4px}}		& {} & \fontsourcesanspro{\hfill{\date}} \\
					\fontsourcesanspro{\large{\location}} 																			  & {}	& {} & {}
				\end{tabularx}
			}
		\description
		\vspace{5px}
	}
}

\newcommand{\itemlist}[1]{\begin{itemize}[noitemsep,leftmargin=*]#1\end{itemize}}

\newcommand{\bulletitem}[1]{\listitem{--}{#1}}

\DeclareDocumentCommand\formatteddaterange{ m g }{\IfValueTF{#2}{#1 - #2}{from #1}}

\newcommand{\positionwithpromo}[2]{#1{ }\to{ }{#2}}
