grammar Euporia;
options { tokenVocab=EuporiaLexer; }

start
    : (firstSentenceLike (sentence)* lastSentenceLike|firstSentenceLike)+
    ;
firstSentenceLike
    : paratext*
      (wordLike|num|punct|scilicet|scilicetFPart|supplied|suppliedFPart|wordPart wordMPart* wordFPart|unclearSense)
      (word|wordIPart wordMPart* wordFPart|wordIPart|num|unclearSense|scilicet|supplied|punct|paratext)*
      (fullStop|questionMark|exclamationMark)
    ;
lastSentenceLike
    : (word|wordIPart wordMPart* wordFPart|wordIPart|num|unclearSense|scilicet|scilicetIPart|supplied|suppliedIPart|punct|paratext)+
    ;
sentence
    : (word|wordIPart wordMPart* wordFPart|wordIPart|num|unclearSense|scilicet|supplied|punct|paratext)+
      (fullStop|questionMark|exclamationMark)
    ;
fullStop
    : DOT
    ;
questionMark
    : QMARK
    ;
exclamationMark
    : XMARK
    ;
paratext
    : BEG_PT textualBlock pred PT_END_PT
    ;
textualBlock
    : uncert? quantity unit
    | textualBlock (PT_CONJ textualBlock)+
    ;
uncert
    : PT_CIRCA
    ;
quantity
    : num
    | range
    ;
unit
    : unitLine
    | unitWord
    ;
unitLine
    : PT_UNIT_LINE
    ;
unitWord
    : PT_UNIT_WORD
    ;
pred
    : missing
    ;
missing
    : PT_PRED_MISSING
    ;
scilicet
    : LPAR (word|num|punct)+ RPAR
    ;
scilicetIPart
    : LPAR (word|num|punct)
    ;
scilicetFPart
    : (word|num|punct)+ RPAR
    ;
unclearSense
    : UNCLEAR
    ;
supplied
    : LBRACK (word|wordIPart wordMPart* wordFPart|num|punct)+ RBRACK
    ;
suppliedIPart
    : LBRACK (word|wordIPart wordMPart* wordFPart|num|punct)+
    ;
suppliedFPart
    : (word|wordIPart wordMPart* wordFPart|num|punct)+ RBRACK
    ;
num
    : NUM|PT_NUM
    ;
range
    : num (MINUS|PT_MINUS) num
    ;
word
    : ALPHASEQ
    ;
wordLike
    : ALPHASEQ
    ;
wordPart
    : ALPHASEQ hyphenation
    ;
wordIPart
    : ALPHASEQ hyphenation
    ;
wordMPart
    : ALPHASEQ hyphenation
    ;
wordFPart
    : ALPHASEQ
    ;
hyphenation
    : MINUS
    ;
punct
    : COMMA
    | SEMICOLON
    | COLON
    | VBAR
    | MDASH
    | SLASH
    | LQUOT
    | RQUOT
    | LT
    | GT
    ;
