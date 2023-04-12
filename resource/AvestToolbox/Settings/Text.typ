\+DatabaseType Text
\ver 5.0
\desc Standard interlinear text type.
\+mkrset 
\lngDefault Avestisch
\mkrRecord id

\+mkr PoS
\nam Part of Speech
\desc Part of speech of each morpheme in the morpheme breaks line.
\lng English
\+fnt 
\Name Calibri
\Size 11
\charset 00
\rgbColor 128,128,128
\-fnt
\mkrOverThis lm
\mkrFollowingThis gD
\-mkr

\+mkr cls
\nam Bildungsklasse
\lng Default
\mkrOverThis lm
\mkrFollowingThis lm
\CharStyle
\-mkr

\+mkr gD
\nam Glosse
\desc English gloss of each morpheme in the morpheme breaks line.
\lng English
\+fnt 
\Name Calibri
\Size 11
\charset 00
\rgbColor 0,0,0
\-fnt
\mkrOverThis lm
\mkrFollowingThis trans
\-mkr

\+mkr id
\nam Text Name
\desc Identifying name for the text in this record.
\lng English
\+fnt 
\Name Calibri
\Size 11
\charset 00
\rgbColor 128,128,128
\-fnt
\mkrFollowingThis ref
\-mkr

\+mkr lm
\nam Lemma
\lng Avestisch
\+fnt 
\Name Palemonas
\Size 12
\Bold
\charset 00
\rgbColor 0,128,0
\-fnt
\mkrOverThis std
\mkrFollowingThis PoS
\-mkr

\+mkr mrph
\nam Morphologie
\lng English
\+fnt 
\Name Calibri
\Size 11
\charset 00
\rgbColor 128,128,128
\-fnt
\mkrOverThis std
\mkrFollowingThis cls
\-mkr

\+mkr or
\nam avestamanus
\lng avest-manus
\+fnt 
\Name Ahuramzda
\Size 12
\charset 00
\rgbColor 0,0,0
\-fnt
\mkrOverThis id
\mkrFollowingThis tx
\CharStyle
\-mkr

\+mkr ref
\nam Reference
\desc Reference for the following text unit. References are used for word list and concordance, plus other purposes.  A reference usually consists of a short abbreviation of the text name, followed by a dot and a number. Text numbering and renumbering automatically update references in this form.
\lng English
\mkrOverThis id
\mkrFollowingThis tx
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
\mkrFollowingThis mrph
\-mkr

\+mkr synt
\nam *
\lng Avestisch
\mkrOverThis id
\-mkr

\+mkr trans
\nam Tranlation
\lng English
\mkrOverThis ref
\mkrFollowingThis ref
\CharStyle
\-mkr

\+mkr tx
\nam Text
\desc Source text unit for interlinearization. Usually a sentence or clause. After interlinearization there may be multiple text lines in a referenced text unit.
\lng Avestisch
\+fnt 
\Name Palemonas
\Size 12
\Bold
\charset 00
\rgbColor 255,0,0
\-fnt
\mkrOverThis ref
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
\bInsertFail
\bShowRootGuess
\-intprc

\+intprc Lookup
\mkrFrom std
\mkrTo mrph

\+triLook 
\dbtyp Lm-Mrph
\+drflst 
\+drf 
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\Lm-Mrph.txt
\-drf
\-drflst
\+mrflst 
\mkr std
\-mrflst
\mkrOut mrph
\-triLook
\GlossSeparator ;
\FailMark ***
\bShowRootGuess
\-intprc

\+intprc Lookup
\mkrFrom std
\mkrTo cls

\+triLook 
\dbtyp Lm-Mrph
\+drflst 
\+drf 
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\Lm-Mrph.txt
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

\+intprc Lookup
\mkrFrom std
\mkrTo lm

\+triLook 
\dbtyp Lm-Mrph
\+drflst 
\+drf 
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\Lm-Mrph.txt
\-drf
\-drflst
\+mrflst 
\mkr std
\-mrflst
\mkrOut lm
\-triLook
\GlossSeparator ;
\FailMark ***
\bInsertFail
\bShowRootGuess
\-intprc

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
\bShowRootGuess
\-intprc

\+intprc Lookup
\mkrFrom lm
\mkrTo gD

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
\mkrOut gD
\-triLook
\GlossSeparator ;
\FailMark ***
\bInsertFail
\bShowRootGuess
\-intprc

\-intprclst
\+filset 

\-filset

\+jmpset 
\+jmp PoS
\+mkrsubsetIncluded 
\mkr PoS
\-mkrsubsetIncluded
\+drflst 
\+drf 
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\Syntax.txt
\mkr PoS
\-drf
\-drflst
\-jmp
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
\match_char p
\-jmp
\+jmp tx
\+mkrsubsetIncluded 
\mkr tx
\-mkrsubsetIncluded
\+drflst 
\+drf 
\File D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\Standard.txt
\mkr tx
\-drf
\-drflst
\-jmp
\-jmpset

\+template 
\fld \ref
\fld \tx
\fld \std
\fld \mrph
\fld \cls
\fld \lm
\fld \PoS
\fld \gD
\fld \trans
\-template
\mkrRecord id
\mkrTextRef ref
\+PrintProperties 
\header File: &f, Date: &d
\footer Page &p
\topmargin 1.00 in
\leftmargin 0.25 in
\bottommargin 1.00 in
\rightmargin 0.25 in
\recordsspace 10
\-PrintProperties
\+expset 

\+expRTF Rich Text Format
\exportedFile C:\Users\FelixThies\Desktop\BP 37.rtf
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
\exportedFile D:\Hannes\Dateien\Uni\Indoiranisch\Iranisch\AvestToolbox\export
\-expSF

\expDefault Standard Format
\SkipProperties
\-expset
\+numbering 
\mkrRef ref
\mkrTxt tx
\+subsetTextBreakMarkers 
\+mkrsubsetIncluded 
\mkr tx
\-mkrsubsetIncluded
\-subsetTextBreakMarkers
\-numbering
\-DatabaseType
