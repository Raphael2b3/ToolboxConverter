\+DatabaseType MDF-Standard
\ver 5.0
\+mkrset 
\lngDefault Default
\mkrRecord tx

\+mkr anm
\nam Textanmerkung
\lng Default
\mkrOverThis tx
\-mkr

\+mkr dt
\lng Default
\mkrOverThis tx
\-mkr

\+mkr ge
\lng Default
\mkrOverThis tx
\-mkr

\+mkr lx
\lng Default
\mkrOverThis tx
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
\mkrOverThis tx
\-mkr

\+mkr tx
\nam Text
\lng Avestisch
\+fnt 
\Name Palemonas
\Size 14
\Bold
\charset 00
\rgbColor 255,0,0
\-fnt
\mkrFollowingThis std
\-mkr

\-mkrset

\iInterlinCharWd 8

\+intprclst 
\fglst {
\fglend }
\mbnd +
\mbrks -

\+intprc Lookup
\mkrFrom tx
\mkrTo std

\+triLook 
\dbtyp MDF-Standard
\+drflst 
\+drf 
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\Standard.txt
\-drf
\-drflst
\+mrflst 
\mkr tx
\-mrflst
\mkrOut std
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
\+jmp std
\+mkrsubsetIncluded 
\mkr std
\-mkrsubsetIncluded
\+drflst 
\+drf 
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\Lm-Mrph.txt
\mkr std
\-drf
\-drflst
\-jmp
\-jmpset

\+template 
\fld \anm
\fld \std
\fld \dt
\-template
\mkrRecord tx
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
