grammar Euporia;
options { tokenVocab=EuporiaLexer; }

start: column;
column: line+;
line: WS* lineNum? WS* (text|paragraphos|dipleObelismene)+ NL;
lineNum: num WS;
num: NUM;
text: (latUnit|grcUnit punct? WS*|num|any)+;
latUnit: latSeq WS;
latSeq: LAT_SEQ;
grcUnit: 
    (
        editGrcChar
        |editDel
        |editIns
        |uncGrcChar
        |emptySuppl
        |suppl|
        leftSuppl
        |rightSuppl
        |missingSeq
        |grcSeq
    )+ 
    hyphen?;
grcSeq: g+;
missingSeq: (m|z)+;
g: GRC_CHAR;
m: DOT|GS_DOT;
z: L_SML_PAR m R_SML_PAR;
hyphen: HYPHEN;
punct: PUNCT;
emptySuppl: L_BRA R_BRA;
suppl:L_BRA (grcSeq|missingSeq)+ R_BRA;
leftSuppl: (grcSeq|missingSeq)+ R_BRA;
rightSuppl: L_BRA (grcSeq|missingSeq)+;
editDel: L_CUR grcSeq R_CUR;
editIns: L_ANG grcSeq R_ANG;
uncGrcChar: g SUBLINEAR_DOT;
editGrcChar: g AST_BLW;
dipleObelismene: DIPLE_OBELISMENE|GS_DIPLE_OBELISMENE;  // separation of text blocks
paragraphos: PARAGRAPHOS;
any: ANY;
