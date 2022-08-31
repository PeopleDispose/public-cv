\ProvidesClass{internal-commands}
\LoadClass{private-commands}

\newcommand{\companyexperience}[1]
{
	\pgfkeys{/experience position,position,company,date,responsibilities,technologies,#1,print}
}
\pgfkeys
{
	/experience position/.is family, /experience position,
	position/.store in=\position,
	company/.store in=\company,
	date/.store in=\date,
	date/.default=,
	responsibilities/.store in=\responsibilities,
	technologies/.default=,
	technologies/.store in=\technologies,
	print/.code=
	{
		\ifthenelse
			{\equal{\company}{}}
			{
				\begin{tabularx}{\columnwidth}{c X c}
					\fontsourcesanspro{\large{\textbf{\position}}}	& {} & \fontsourcesanspro{\hfill{\date}}
				\end{tabularx}
				\vspace{-10px}
			}
			{
				\begin{tabularx}{\columnwidth}{c X X c}
					\multicolumn{2}{l}{\fontsourcesanspro{\large{\textbf{\position}}}\vspace{4px}}		& {} & \fontsourcesanspro{\hfill{\date}} \\
					\fontsourcesanspro{\large{\company}} 																				 	  & {} 	& {} & {}
				\end{tabularx}
			}
		\itemlist
		{
			\bulletitemindented{\responsibilities}
			\ifnot
				{\equal{\technologies}{}}
				{
					\bulletitemindented{\emph{Key technologies}: \technologies}
				}
		}
		\vspace{5px}
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
