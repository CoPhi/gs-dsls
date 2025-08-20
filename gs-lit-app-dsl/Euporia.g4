grammar Euporia;
options { tokenVocab=EuporiaLexer; }

start: colRef line+;

colRef: COL NUM NL;

line: lineRef reading (COLON reading)* cetera? NL;
lineRef: singleLine|lineRange;
singleLine:NUM;
lineRange: startLine DASH endLine;
startLine: NUM;
endLine: NUM;
reading: text? operation? (editor|gsEditor);

text: (GRC_SEQ|L_BRAC|R_BRAC|PIPE|DL_BRAC|DR_BRAC|L_CURL|R_CURL|L_ANG|R_ANG)+;

editor: (EDITOR|LIBRARIUS) (UNDERSCORE postCorr)?;
postCorr: POST_CORR;
gsEditor: GS_EDITOR;

cetera: COMMA CETERA (editor|gsEditor);

operation: OPERATION;

