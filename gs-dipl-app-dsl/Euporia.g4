grammar Euporia;
options { tokenVocab=EuporiaLexer; }

start: listApp+;  //start sarà convertito nella listApp madre di tutte le altre listApp
listApp: loc  (TAB? app NL) (TAB app NL)*;
loc: DIGIT DIGIT? DIGIT?; // DIGIT{1,3}
//app: lem (witDetail|rdg+);
app     : lem 
        ( witDetail wit* 
        | witDetail? wit+ COLON rdg? witDetail? (wit+ | witsAbs) (COLON rdg? witDetail? (wit+ | witsAbs))*
        );
lem: position? lectio;
witDetail: (layer | (velPalStat | palStat)) (velPalStat | palStat)? (COMMA (velPalStat | palStat))*;

velPalStat: palStat (vel palStat)+;

vel : PAL_VEL;

palStat : (palDesc)+
        | L_PAR GRC_CHAR GRC_CHAR? (COMMA GRC_CHAR GRC_CHAR?)* R_PAR
        | (LAT_LC_SEQ | palDesc)+ GRC_CHAR? (COMMA GRC_CHAR)* //todo: from here check if is possible 2 grc_char
        ;

palDesc : PAL_ARCUS
        | PAL_SIN
        | PAL_DEXT
        | PAL_SUP
        | PAL_MED
        | PAL_INF
        | PAL_ASC
        | PAL_DESC
        | PAL_VERT
        | PAL_HORIZ
        | PAL_VEST
        | PAL_INIT
        | PAL_FIN
        ;

witsAbs: L_BRA wit+ R_BRA;
wit: LAT_CHAR manus?;
manus: LAT_LC_SEQ;
rdg: lectio;
position: PAL_INIT
        | PAL_MED
        | PAL_FIN
        ;
lectio  : 
        ( GRC_CHAR
        | GRC_BOLD_CHAR
        | L_BRA
        | R_BRA
        | L_TOP_HLF_BRA
        | R_TOP_HLF_BRA
        | L_DBL_BRA
        | R_DBL_BRA
        | SUB_DOT
        | L_TOP_SML_BRA
        | R_TOP_SML_BRA
        | SUPER_DOT
        | COMMA
        | SEMICOLON
        | SINGLE_SUB_DOT
        )+
        ;
layer : sub | sup;

sub: (MINUS | SUPER_MINUS) (NUM | SUPER_NUM) ;
sup: (PLUS | SUPER_PLUS) (NUM | SUPER_NUM) ;
