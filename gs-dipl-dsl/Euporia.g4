grammar Euporia;
options { tokenVocab=EuporiaLexer; }

start: column; // starting rule
column: line+; // column made of lines
line: WS* lineNum? WS* (text|paragraphos|dipleObelismene)+ NL; // line ended by a new line char
lineNum: num WS; // number of line
num: NUM; // sequence of digits
text: ((latUnit|grcUnit) WS*|num)+; // Latin or Greek text
latUnit: latSeq punct?; // extratextual information expressed in Latin
latSeq: LAT_SEQ; // sequence of Latin characters
grcUnit:
   (
        editGrcChar
        |editDel
        |editIns
        |uncGrcChar
        |emptyLacuna
        |lacuna
        |leftLacuna
        |rightLacuna
        |apographRdng
        |scribDel
        |scribIns
        |u
        |opt
        |g
  )+
  hyphen?; // sequence of Greek characters or descriptions of textual phenomena
g: GRC_CHAR; // Greek char
u: DOT|GS_DOT; // uncertain character or missing character
opt: L_SML_PAR u R_SML_PAR; // optional uncertain or missing character
hyphen: HYPHEN; // hyphenation mark
punct: PUNCT; // punctuation mark
emptyLacuna: L_BRA R_BRA; // lacuna without text
lacuna:L_BRA (u|opt)+ R_BRA; // textual lacuna
leftLacuna: (u|opt)+ R_BRA; // textual lacuna on the left side of the papyrus
rightLacuna: L_BRA (u|opt)+; // textual lacuno on the right side of the papyrus
apographRdng: L_TOP_HLF_BRA (g|uncGrcChar|u|opt)+ R_TOP_HLF_BRA; // text or textual fragment from an apograph
scribDel: L_DBL_BRA grcUnit+ R_DBL_BRA; // deletion made by scribes
scribIns: L_OBL_APO grcUnit+ R_OBL_APO; // insertion made by scribes
editDel: L_CUR grcUnit+ R_CUR; // deletion made by editors
editIns: L_ANG grcUnit+ R_ANG; // insertion made by editors
uncGrcChar: g SUBLINEAR_DOT; // uncertain Greek char
editGrcChar: g AST_BLW; // char changed by editors motivated by apograph reading (?) 
dipleObelismene: DIPLE_OBELISMENE|GS_DIPLE_OBELISMENE; // separation of text blocks
paragraphos: PARAGRAPHOS; // separation of text blocks
