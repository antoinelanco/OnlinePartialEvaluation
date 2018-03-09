%{

  open SourceAst

%}

%token <string> IDENT
%token BEGIN END
%token COMMA SEMI
%token <int> LITINT
%token IF
%token TRUE FALSE
%token ADD MULT SUB EQ
%token PRIM VAR CONST APPLAY
%token TL HD LENGTH
%token IVAL BVAL CVAL TVAL PVAL
%token BB EB
%token DCOTE
%token EOF
%token FST SND ISPAIR
%token EXISTS FIND
%token EXCEP
%token SWITCH

%start prog
%type <SourceAst.prog> prog

%%


str:
| DCOTE; id=IDENT; DCOTE { id }


prog:
| BEGIN; BB; f=progs; EB; COMMA; e=expr; END; EOF
{ (f, e) }

progs:
| (* empty *) { Func_Tbl.empty }
| fs=fdef; p=progs
    {
      let (id, infos) = fs in
      Func_Tbl.add id infos p
    }

fdef:
| fname=str; COMMA; BEGIN; BB; para=separated_list(COMMA,str); EB; COMMA;
  e=expr; END
 {(fname, (para, e))}

vall:
| IVAL; i=LITINT                            { IVal(i) }
| BVAL; TRUE                                { BVal(true) }
| BVAL; FALSE                               { BVal(false) }
| CVAL; c=str                               { CVal(c) }
| TVAL; BB; t=separated_list(SEMI,vall); EB { TVal(t) }
| PVAL; BEGIN; e1=vall; COMMA; e2=vall; END { PVal(e1,e2) }

expr:
| EXCEP { Exception }
| CONST; BEGIN; v=vall; END { Const(v) }
| VAR; id=str { Var(id) }
| APPLAY; id=str BB; es=separated_list(COMMA, expr); EB { Apply(id,es) }
| PRIM; bin=op; BB; es=separated_list(COMMA, expr); EB { Prim(bin,es) }
| IF; BEGIN; e1=expr; END; BEGIN; e2=expr; END; BEGIN; e3=expr; END { If(e1,e2,e3) }
/* | TL; BEGIN; e=expr; END { TL(e) }
| HD; BEGIN; e=expr; END { HD(e) }
| LENGTH; BEGIN; e=expr; END { Length(e) }
| FST; BEGIN; e=expr; END { Fst(e) }
| SND; BEGIN; e=expr; END { Snd(e) }
| ISPAIR; BEGIN e=expr; END { IsPair(e) } */
| EXISTS; BEGIN; e1=expr; COMMA; e2=expr; END { Exists(e1,e2) }
| FIND; BEGIN; e1=expr; COMMA; e2=expr; END { Find(e1,e2) }
| SWITCH; BEGIN; e1=expr; END; BB; es=separated_nonempty_list(SEMI, case); EB; BEGIN; e2=expr; END { Switch (e1,es,e2) }

case:
| BEGIN; v1=vall; COMMA; e2=expr; END { (v1,e2) }

op:
| MULT   { Mult }
| ADD    { Add }
| SUB    { Sub }
| EQ     { Eq }
| TL     { TL }
| HD     { HD }
| FST    { Fst }
| SND    { Snd }
| LENGTH { Length }
| ISPAIR { IsPair }
