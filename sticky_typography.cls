% ---------------------------------------------------------------------------------
% sticky_typography.cls
%   LaTeX template for typography of Study Association Sticky.
%
%   (C) 2015 Laurens Duijvesteijn <l.duijvesteijn@gmail.com>
%
%   MIT Licensed.
%
% ---------------------------------------------------------------------------------

%
% Identification
%
%   The next lines give this class its name, a version and the date of last
%   modification. It also restricts the input format to LaTex2e.
%
\ProvidesClass{sticky_typography}[2015/02/16 version 0.0.1]
\NeedsTeXFormat{LaTeX2e}

%
% Options
%
%   The next line reads the options given to the class. If a file is named
%   `<option>.members` is found, this file is loaded. This is intended for use as
%   `<committee_name>.members` to save the members of a certain committee for reuse.
%
%   After reading in the options, they are processed and the article class is loaded.
%   `\relax` is a no-op command, which is used in place where LaTeX expects a macro,
%   but none is required.
%
\DeclareOption*{\InputIfFileExists{\CurrentOption.type}{}{%
  \PassOptionsToClass{\CurrentOption}{article}}}

\ProcessOptions\relax
\LoadClass{article}

%
% Typographical adjustments
%
%   This section sets bitsteam charter as the default font for paragraphs and TeX
%   Gyre Heros as the heading font.
%
\RequirePackage[bitstream-charter]{mathdesign}
\RequirePackage{carlito}
\RequirePackage{titlesec}
\RequirePackage[T1]{fontenc}


% Set the font of a \section to TeX Gyre Heros. 'b' is for bold.
\titleformat{\section}
  {\carlito{}\bfseries{}}
  {}
  {0em}
  {\hspace{-0.4pt}\Large \thesection\hspace{0.6em}}

% vim: ft=tex
