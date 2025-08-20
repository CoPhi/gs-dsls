lexer grammar EuporiaLexer;

PAL_VEL: 'vel';
PAL_ARCUS: 'arcus';
PAL_SIN: 'sin.';
PAL_DEXT: 'dext.';
PAL_SUP: 'sup.';
PAL_MED: 'med.';
PAL_INF: 'inf.';
PAL_ASC: 'asc.';
PAL_DESC: 'desc.';
PAL_VERT: 'vert.';
PAL_HORIZ: 'horiz.';
PAL_VEST: 'vest.';
PAL_INIT: 'init.';
PAL_FIN: 'fin.';

GRC_CHAR: [\u03B1-\u03C9];
GRC_BOLD_CHAR: [𝛂-𝛠]; // greek bold characters
//GRC_BOLD_a:'\uD835\uDEC2';
//GRC_BOLD_r: '𝛠';
LAT_CHAR: [A-Z];
LAT_LC_SEQ: [a-z]+' '?'.'?;
DIGIT: [0-9];
L_BRA: '[';
R_BRA: ']';
L_PAR: '(';
R_PAR: ')';
L_TOP_HLF_BRA: '⌈';
R_TOP_HLF_BRA: '⌉';
L_DBL_BRA: '⟦';
R_DBL_BRA: '⟧';
SUB_DOT: ''|''; // \uE5CE
MINUS: '-';
PLUS: '+';
NUM: [1-9];
SUPER_MINUS: '\u207B'; // ⁻
SUPER_PLUS: '\u207A'; // ⁺
SUPER_NUM: [\u00b9\u00b2\u00b3\u2071-\u2079]+; // ¹²³ⁱ-⁹ 
L_TOP_SML_BRA:'\uE7A0';
R_TOP_SML_BRA:'\uE7A1';
SUPER_DOT:'\uE54D';
COMMA: ',';
COLON: ':';
SEMICOLON: ';';
SINGLE_SUB_DOT:'̣';

NL: '\n' | '\r' | '\n\r';

TAB: '\t';

WS: ' ' ->skip;

