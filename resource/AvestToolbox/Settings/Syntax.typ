\+DatabaseType Syntax
\ver 5.0
\+mkrset 
\lngDefault Default
\mkrRecord PoS

\+mkr PoS
\lng Default
\+fnt 
\Name Calibri
\Size 12
\charset 00
\rgbColor 0,0,0
\-fnt
\-mkr

\+mkr synt
\nam Syntax
\lng Default
\+fnt 
\Name Calibri
\Size 12
\charset 00
\rgbColor 0,0,0
\-fnt
\mkrOverThis PoS
\CharStyle
\-mkr

\-mkrset

\iInterlinCharWd 8
\+filset 

\-filset

\+jmpset 
\+jmp PoS
\+mkrsubsetIncluded 
\mkr PoS
\-mkrsubsetIncluded
\+drflst 
\+drf 
\File C:\source\repos\Python Projects\Toolbox\resource\AvestToolbox\Syntax.txt
\mkr PoS
\-drf
\-drflst
\-jmp
\-jmpset

\+template 
\fld \synt
\-template
\mkrRecord PoS
\+PrintProperties 
\header File: &fDate: &d
\footer Page &p
\topmargin 2.54 cm
\leftmargin 0.64 cm
\bottommargin 2.54 cm
\rightmargin 0.64 cm
\recordsspace 10
\-PrintProperties
\+expset 

\+expRTF Rich Text Format
\+rtfPageSetup 
\paperSize letter
\topMargin 1
\bottomMargin 1
\leftMargin 1.25
\rightMargin 1.25
\gutter 0
\headerToEdge 0.5
\footerToEdge 0.5
\columns 1
\columnSpacing 0.5
\-rtfPageSetup
\-expRTF

\+expSF Standard Format
\-expSF

\SkipProperties
\-expset
\-DatabaseType
