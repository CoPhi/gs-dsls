lexer grammar EuporiaLexer;

// abridged prefixes or suffixes - L: left; R: right; HLF: half; DBL: double; BRA: bracket; CUR: curly bracket; ANG: angular parenthesis; OBL: oblique;  APO: apostrophe; BLD: bold; BTM: bottom; BLW: below; SML: small; AST: asterisk; GS: specific to the Greek Schools project; lit. ed.: literary edition; dipl. ed.: diplomatic edition

NUM: [0-9]+; // number
LAT_SEQ : [a-zA-Z]+'.'?; // sequence of Latin characters, possibly abridged by a punctuation mark (e.g. Col.)
GRC_CHAR : [\u0370-\u03ff\u1f00-\u1fff\u2019]; // sequence of Greek characters

SUBLINEAR_DOT : '\u0323'|'\ue54e'; // sublinear dot denotes an incomplete char in the dipl. ed. and an uncertain char in the lit. ed.  
L_TOP_HLF_BRA: '⌈'|'⸢'; // u2308 | u2e22 OPEN text from apograph
R_TOP_HLF_BRA: '⌉'|'⸣'; // u2309 | u2e23 CLOSE text from apograph
L_DBL_BRA: '⟦'; // u27e6  OPEN text cancelled by scribes
R_DBL_BRA: '⟧'; // u27e7 CLOSE text cancelled by scribes
L_OBL_APO: '⸌'; // u2e0c OPEN text added by scribes
R_OBL_APO: '⸍'; // u2e0d CLOSE text added by scribes
L_CUR: '{'; // OPEN in lit. ed. text cancelled by editors
R_CUR: '}'; // CLOSE in lit. ed. text cancelled by editors
L_ANG: '⟨'|'‹'; // u27e8 OPEN in lit. ed. text added by editors
R_ANG: '⟩'|'›'; // u27e9 CLOSE in lit. ed. text added by editors
L_BRA: '['; // OPEN in lit. ed. lacuna integrated by editors
R_BRA: ']'; // CLOSE in lit. ed. lacuna integrated by editors
L_BLD: '⧼'; // u29fc OPEN ???
R_BLD: '⧽'; // u29fd CLOSE ???
AST_BLW: '\u0359'; // text changed by editors (?)
L_BTM_HLF_BRA: '⌊'|'⸤'; // u230a u2e24 OPEN in lit. ed. integration by editors from a "twin" source
R_BTM_HLF_BRA: '⌋'|'⸥'; // u230b u2e25 CLOSE in lit. ed. integration by editors from a "twin" source
DOT: ('․'|'﹒'|'.'); // u2024 ufe52 a dot may denote an unreadable or uncertain character in the dipl. ed. or just an unreadable char in the lit. ed.
L_SML_PAR: '₍'; // u208d OPEN optional char (= after a dot, it denotes uncertainty if one or two characters must be supplied)
R_SML_PAR: '₎'; // u208e CLOSE optional char (= after a dot, it denotes uncertainty if one or two characters must be supplied)
PARAGRAPHOS: '⸏'; // end of a textual block
DIPLE_OBELISMENE: '⸐'|'᚛'; // end of a textual block
GS_DIPLE_OBELISMENE: '\ue736'; // end of a textual block
GS_DOT: '\ue5ce'; // dot rendered by the specific font used within the GS Project
SPATIUM_VACUUM: '⸆'; // u2e06 empty space
SPATIOLUM: '⃓'; // u20d3 small space
VERT_BAR: '|'; // end or beginning of a verse
DBL_VERT_BAR: '‖'; // u2016 end or beginning of a column
DBL_SLASH: '⃫'; // u20eb in dipl. ed. union of two parts of a verse in two different fragments
HYPHEN: '-'; // hyphenation mark
PUNCT: [,·]; // punctuation marks (excluding the polysemous dot)
NL: [\n\r]|'\r''\n'; // new line
WS: ' '; // white space
ANY: .+?; // any character missed by the previous token definitions

