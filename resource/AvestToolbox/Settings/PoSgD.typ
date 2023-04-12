\+DatabaseType PoS-gD
\ver 5.0
\+mkrset 
\lngDefault Default
\mkrRecord lm

\+mkr Bar
\nam Bartholomae
\lng Default
\mkrOverThis lm
\mkrFollowingThis PoS
\CharStyle
\-mkr

\+mkr Bp
\nam Seitenzahl
\lng Default
\mkrOverThis lm
\mkrFollowingThis anm
\CharStyle
\-mkr

\+mkr PoS
\nam Wortart
\lng Default
\+fnt 
\Name Calibri
\Size 11
\charset 00
\rgbColor 128,128,128
\-fnt
\mkrOverThis lm
\mkrFollowingThis cls
\-mkr

\+mkr anm
\nam Anmerkungen
\lng Default
\mkrOverThis lm
\CharStyle
\-mkr

\+mkr cls
\nam Klasse
\lng Default
\mkrOverThis lm
\mkrFollowingThis gD
\CharStyle
\-mkr

\+mkr dt
\lng Default
\mkrOverThis lm
\-mkr

\+mkr ety
\nam Etymologie
\lng Default
\mkrOverThis lm
\-mkr

\+mkr gD
\nam Glosse deutsch
\lng Default
\+fnt 
\Name Calibri
\Size 11
\charset 00
\rgbColor 0,0,0
\-fnt
\mkrOverThis lm
\mkrFollowingThis Bp
\-mkr

\+mkr lm
\lng Avestisch
\+fnt 
\Name Palemonas
\Size 14
\Bold
\charset 00
\rgbColor 0,128,0
\-fnt
\mkrFollowingThis Bar
\-mkr

\-mkrset

\iInterlinCharWd 8

\+intprclst 
\fglst {
\fglend }
\mbnd +
\mbrks -

\+intprc Lookup
\mkrFrom lm
\mkrTo PoS

\+triLook 
\dbtyp PoS-gD
\+drflst 
\+drf 
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\PoS-gD.txt
\-drf
\-drflst
\+mrflst 
\mkr lm
\-mrflst
\mkrOut PoS
\-triLook
\GlossSeparator ;
\FailMark ***
\bShowFailMark
\bShowRootGuess
\-intprc

\+intprc Lookup
\mkrFrom lm
\mkrTo gD

\+triLook 
\dbtyp Lm-Mrph
\+drflst 
\+drf 
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\Lm-Mrph.txt
\-drf
\-drflst
\+mrflst 
\mkr lm
\-mrflst
\mkrOut gD
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
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\PoS-gD.txt
\mkr lm
\-drf
\-drflst
\-jmp
\-jmpset

\+template 
\fld \Bar
\fld \PoS
\fld \cls
\fld \gD
\fld \Bp
\fld \anm
\fld \dt
\-template
\mkrRecord lm
\mkrMultipleMatchShow Bar
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
