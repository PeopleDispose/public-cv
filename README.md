## Some commands reminder

* `\companyexperience` - New extry in company/project/etc. worth to separate as new entry in CV.<br>
Usage:
```tex
\companyexperience{
    position={Senior Software Architect},
    company={Plague Inc.},
    date={Jan 2020 - Feb 2020},
    responsibilities=
    {
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    },
    technologies=
    {
        Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.
    },
}
```

* `\tabulardata` - Builds a formatted table with optional second row in case if argument was passed.<br>
Example:
```tex
`tabulardata {
    header={Very Important Stuff},
    location={Hudsonland},          %Optional
    date={251.902 Ma},
    description={42}                %renders outside table
}
```

* `\itemlist` - Starts `itemize` environment aligning as the text around.

* `\bulletitem` - New `itemize` entry with long bullet symbol.

* `\formatteddaterange` - Returns a date range in two variants: date range format and 'from some point' format depending on existance of second argument.<br>
Examples:
```tex
\formatteddaterange{Jan 2020}{Jan 2025} %Jan 2020 - Jan 2025

\formatteddaterange{new}                %From now
```

* `\positionwithpromo` - Specifies that during single assignment position was changed.<br>
Usage:
```tex
\positionwithpromo{Junior QA}{Scrum Master} %Junior QA -> Scrum Master
```