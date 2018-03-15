%{

  open SourceAst

%}

%token <string> IDENT
%token BEGIN END
%token COMMA SEMI
%token <int> LITINT
%token IF ELSE
%token TRUE FALSE
%token ADD MULT SUB EQ
%token TL HD LENGTH
%token BB EB FB FE
%token DCOTE
%token FST SND ISPAIR
%token EXISTS FIND
%token EXCEP
%token SWITCH
%token FUN
%token EOF

%start prog
%type <SourceAst.prog> prog

%%


str:
| DCOTE; id=IDENT; DCOTE { id }


prog:
| f=progs; e=expr; EOF
{ (f, e) }

progs:
| (* empty *) { Func_Tbl.empty }
| fs=fdef; p=progs
    {
      let (id, infos) = fs in
      Func_Tbl.add id infos p
    }

fdef:
| FUN; fname=IDENT; BEGIN; para=separated_list(COMMA,IDENT); END;
  FB; e=expr; FE
{(fname, (para, e))}

vall:
| i=LITINT                            { IVal(i) }
| TRUE                                { BVal(true) }
| FALSE                               { BVal(false) }
| c=str                               { CVal(c) }
| BB; t=separated_list(SEMI,vall); EB { TVal(t) }
| BEGIN; e1=vall; COMMA; e2=vall; END { PVal(e1,e2) }

expr:
| EXCEP { Exception }
| v=vall { Const(v) }
| id=IDENT { Var(id) }
| id=IDENT; BEGIN; es=separated_list(COMMA, expr); END { Apply(id,es) }
| bin=op; BB; es=separated_list(COMMA, expr); EB { Prim(bin,es) }
| IF; BEGIN; e1=expr; END; FB; e2=expr; FE; ELSE; FB; e3=expr; FE { If(e1,e2,e3) }
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
