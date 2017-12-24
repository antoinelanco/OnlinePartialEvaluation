%{

  open SourceAst

%}

%token <string> IDENT
%token BEGIN END
%token COMMA
%token <int> LITINT
%token IF
%token TRUE FALSE
%token ADD MULT SUB EQ
%token PRIM VAR CONST APPLAY
%token IVAL BVAL
%token BB EB
%token DCOTE
%token EOF

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
| IVAL; i=LITINT { IVal(i) }
| BVAL; TRUE { BVal(true) }
| BVAL; FALSE { BVal(false) }

expr:
| CONST; BEGIN; v=vall; END { Const(v) }
| VAR; id=str { Var(id) }
| APPLAY; id=str BB; es=separated_list(COMMA, expr); EB { Apply(id,es) }
| PRIM; bin=op; BB; es=separated_list(COMMA, expr); EB { Prim(bin,es) }
| IF; BEGIN; e1=expr; END; BEGIN; e2=expr; END; BEGIN; e3=expr; END { If(e1,e2,e3) }

op:
| MULT { Mult }
| ADD  { Add }
| SUB  { Sub }
| EQ   { Eq }
