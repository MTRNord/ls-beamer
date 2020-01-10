# LS beamer theme

[![Build Status](https://travis-ci.org/MTRNord/ls-beamer.svg?branch=master)](https://travis-ci.org/MTRNord/ls-beamer)

This is a LaTeX beamer theme for the Lornsenschule Schleswig based on the Theme made by the University of Antwerp.

![dark title](/doc/manual/figures/dark-page1.png?raw=true "Optional Title")


### Installation
Retrieve ls-beamer via [GitHub](https://github.com/MTRNord/ls-beamer) and place
it in a directory where LaTeX can find it. For user installations on Unix, this is
typically `~/texmf`. Running `texhash` may be required.

You can check the integrity of your installation with
```
$ kpsewhich beamerfontthemeLornsenschuleSchleswig.sty
/home/username/texmf/tex/latex/ls-beamer/theme/beamerfontthemeLornsenschuleSchleswig.sty
```

### Usage

Using the theme is as simple as invoking beamer's `\usetheme`:
```latex
\documentclass[compress]{beamer}

\usetheme[light,darktitle,framenumber,totalframenumber]{UniversiteitAntwerpen}

\usepackage{lipsum}

\title{Some slides with a UA beamer theme}
\subtitle{This is a dummy subtitle}

\author{Nico~Schl\"omer}

\begin{document}

\maketitle

\begin{frame}
\frametitle{A first test frame}
Some dummy text.
\end{frame}

\end{document}
```
See
[here](/doc/example/uaBeamerExample.tex)
for a more verbose example.

Note that the official font of Universiteit Antwerpen is [Underware's Auto
1](https://www.fonts.com/font/underware/auto/1-package). If you have access to
it, you can include it by adding
```
% Fonts. Use Auto 1, the official UA font.
\usepackage{fontspec,microtype}
\usepackage{unicode-math}
\defaultfontfeatures{Ligatures=TeX, Scale=MatchLowercase, Numbers=Lining}
\setmainfont{auto1}
\setsansfont{auto1}
\setmathfont{XITS Math} % for math symbols, can be any other OpenType math font
\setmathfont[range=\mathup]  {auto1}
\setmathfont[range=\mathbfup]{auto1 Bold}
\setmathfont[range=\mathbfit]{auto1 Bold Italic}
\setmathfont[range=\mathit]  {auto1 Italic}
```
to the document preamble.

All options are documented as part of the manual. To compile,
```
cd doc/manual && make
```

### License

This software is published under the [MIT license](https://en.wikipedia.org/wiki/MIT_License).
