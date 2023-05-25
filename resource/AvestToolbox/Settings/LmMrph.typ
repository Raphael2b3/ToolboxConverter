\+DatabaseType Lm-Mrph
\ver 5.0
\+mkrset 
\lngDefault Default
\mkrRecord std

\+mkr cls
\nam Bildungsklasse
\lng Default
\mkrOverThis std
\mkrFollowingThis lm
\CharStyle
\-mkr

\+mkr dt
\lng Default
\mkrOverThis std
\-mkr

\+mkr gD
\nam *
\lng Default
\mkrOverThis std
\-mkr

\+mkr lm
\nam Lemma
\lng Avestisch
\+fnt 
\Name Palemonas
\Size 14
\Bold
\charset 00
\rgbColor 0,128,0
\-fnt
\mkrOverThis std
\-mkr

\+mkr mrph
\nam Morphologie
\lng Default
\+fnt 
\Name Calibri
\Size 11
\charset 00
\rgbColor 128,128,128
\-fnt
\mkrOverThis std
\mkrFollowingThis cls
\-mkr

\+mkr std
\nam Standard
\lng Avestisch
\+fnt 
\Name Palemonas
\Size 14
\Bold
\charset 00
\rgbColor 0,0,255
\-fnt
\mkrFollowingThis mrph
\-mkr

\-mkrset

\iInterlinCharWd 8

\+intprclst 
\fglst {
\fglend }
\mbnd +
\mbrks -

\+intprc Lookup
\mkrFrom std
\mkrTo cls

\+triLook 
\dbtyp Lm-Mrph
\+drflst 
\+drf 
\File C:\source\repos\Python Projects\Toolbox\resource\AvestToolbox\Lm-Mrph.txt
\-drf
\-drflst
\+mrflst 
\mkr std
\-mrflst
\mkrOut cls
\-triLook
\GlossSeparator ;
\FailMark ***
\bShowFailMark
\bShowRootGuess
\-intprc

\-intprclst
\+filset 

\-filset

\+jmpset 
\+jmp lm
\+mkrsubsetIncluded 
\mkr lm
\-mkrsubsetIncluded
\+drflst 
\+drf 
\File C:\source\repos\Python Projects\Toolbox\resource\AvestToolbox\PoS-gD.txt
\mkr lm
\-drf
\-drflst
\-jmp
\-jmpset

\+template 
\fld \mrph
\fld \cls
\fld \lm
\fld \dt
\-template
\mkrRecord std
\mkrMultipleMatchShow mrph
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
\InterlinearSpacing 120
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
