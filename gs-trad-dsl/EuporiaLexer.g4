lexer grammar EuporiaLexer;


BEG_PT: '(|' ->pushMode(PT); //paratext
UNCLEAR: '(?)';
NUM: [0-9]+;
ALPHASEQ: [A-Za-zàéèìóòù]+'’'?;
DOT: '.';
COMMA: ',';
SEMICOLON: ';';
COLON: ':';
XMARK: '!';
QMARK: '?';
VBAR: '|';
MINUS: '-';
MDASH:'‒';
SLASH: '/';
LQUOT: '“';
RQUOT: '”';
LBRACK: '[';
RBRACK: ']';
LPAR: '(';
RPAR: ')';
LT: '﹤';
GT: '﹥';

NL: '\n'->skip;
WS:' '->skip;

mode PT;
PT_CIRCA: 'c.';
PT_NUM: [0-9]+;
PT_MINUS: '-';
PT_CONJ: 'e';
PT_UNIT_LINE: 'li''-\n'?'ne''-\n'?[ae];
PT_UNIT_WORD:'pa''-\n'?'ro''-\n'?'l'[ae];
PT_PRED_MISSING: 'man''-\n'?'can''-\n'?'t'[ei];
PT_NL: '\n'->skip;
PT_WS: ' '->skip;
PT_END_PT: '|)' ->popMode;
