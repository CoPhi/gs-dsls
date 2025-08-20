lexer grammar EuporiaLexer;

NUM: [0-9]+;
LAT_SEQ : [a-zA-Z]+;
GRC_CHAR : [\u0370-\u03ff\u1f00-\u1fff\u2019];

SUBLINEAR_DOT : '\u0323';
L_TOP_HLF_BRA: '⌈'|'⸢'; // u2308 | u2e22
R_TOP_HLF_BRA: '⌉'|'⸣'; // u2309 | u2e23
L_DBL_BRA: '⟦'; // u27e6 
R_DBL_BRA: '⟧'; // u27e7
L_OBL_APO: '⸌'; // u2e0c 
R_OBL_APO: '⸍'; // u2e0d
L_CUR: '{';
R_CUR: '}';
L_ANG: '⟨'|'‹'; // u27e8
R_ANG: '⟩'|'›'; // u27e9
L_BRA: '[';
R_BRA: ']';
L_BLD: '⧼'; // u29fc
R_BLD: '⧽'; // u29fd
AST_BLW: '\u0359';
L_BTM_HLF_BRA: '⌊'|'⸤'; // u230a u2e24
R_BTM_HLF_BRA: '⌋'|'⸥'; // u230b u2e25
DOT: ('․'|'﹒'|'.'); // u2024 ufe52
L_SML_PAR: '₍'; // u208d
R_SML_PAR: '₎'; // u208e
PARAGRAPHOS: '⸏';
DIPLE_OBELISMENE: '⸐'|'᚛';
GS_DIPLE_OBELISMENE: '\ue736'; // end of a textual block
GS_DOT: '\ue5ce'; // dot rendered by the specific font used within the GS Project
SPATIUM_VACUUM: '⸆'; // u2e06
SPATIOLUM: '⃓'; // u20d3
VERT_BAR: '|';
DBL_VERT_BAR: '‖'; // u2016
DBL_SLASH: '⃫'; // u20eb
HYPHEN: '-';
PUNCT: [,·];
NL: [\n\r]|'\r''\n';
WS: ' ';
ANY: .+?;

