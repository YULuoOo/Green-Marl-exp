definition([module(unparameterized("Keywords"),[],[exports(lexical-syntax([prod([lit("Local")],sort("T-LOCAL"),attrs([])),prod([lit("Procedure")],sort("T-PROC"),attrs([])),prod([lit("Proc")],sort("T-PROC"),attrs([])),prod([lit("InBFS")],sort("T-BFS"),attrs([])),prod([lit("InDFS")],sort("T-DFS"),attrs([])),prod([lit("InPost")],sort("T-POST"),attrs([])),prod([lit("InRBFS")],sort("T-RBFS"),attrs([])),prod([lit("From")],sort("T-FROM"),attrs([])),prod([lit("To")],sort("T-TO"),attrs([])),prod([lit("InReverse")],sort("T-BACK"),attrs([])),prod([lit("Graph")],sort("T-GRAPH"),attrs([])),prod([lit("Node")],sort("T-NODE"),attrs([])),prod([lit("Edge")],sort("T-EDGE"),attrs([])),prod([lit("Node-Property")],sort("T-NODEPROP"),attrs([])),prod([lit("Node-Prop")],sort("T-NODEPROP"),attrs([])),prod([lit("N_P")],sort("T-NODEPROP"),attrs([])),prod([lit("Edge-Property")],sort("T-EDGEPROP"),attrs([])),prod([lit("Edge-Prop")],sort("T-EDGEPROP"),attrs([])),prod([lit("E_P")],sort("T-EDGEPROP"),attrs([])),prod([lit("Node-Set")],sort("T-NSET"),attrs([])),prod([lit("N_S")],sort("T-NSET"),attrs([])),prod([lit("Node-Order")],sort("T-NORDER"),attrs([])),prod([lit("N_O")],sort("T-NORDER"),attrs([])),prod([lit("Node-Seq")],sort("T-NSEQ"),attrs([])),prod([lit("Node-Sequence")],sort("T-NSEQ"),attrs([])),prod([lit("N_Q")],sort("T-NSEQ"),attrs([])),prod([lit("Int")],sort("T-INT"),attrs([])),prod([lit("Long")],sort("T-LONG"),attrs([])),prod([lit("Float")],sort("T-FLOAT"),attrs([])),prod([lit("Double")],sort("T-DOUBLE"),attrs([])),prod([lit("Bool")],sort("T-BOOL"),attrs([])),prod([lit("Nodes")],sort("T-NODES"),attrs([])),prod([lit("Edges")],sort("T-EDGES"),attrs([])),prod([lit("Nbrs")],sort("T-NBRS"),attrs([])),prod([lit("OutNbrs")],sort("T-NBRS"),attrs([])),prod([lit("InNbrs")],sort("T-IN-NBRS"),attrs([])),prod([lit("UpNbrs")],sort("T-UP-NBRS"),attrs([])),prod([lit("DownNbrs")],sort("T-DOWN-NBRS"),attrs([])),prod([lit("Items")],sort("T-ITEMS"),attrs([])),prod([lit("CommonNbrs")],sort("T-COMMON-NBRS"),attrs([])),prod([lit("Foreach")],sort("T-FOREACH"),attrs([])),prod([lit("For")],sort("T-FOR"),attrs([])),prod([lit("And")],sort("T-AND"),attrs([])),prod([lit("Or")],sort("T-OR"),attrs([])),prod([lit("&&")],sort("T-AND"),attrs([])),prod([lit("||")],sort("T-OR"),attrs([])),prod([lit("==")],sort("T-EQ"),attrs([])),prod([lit("!=")],sort("T-NEQ"),attrs([])),prod([lit("<=")],sort("T-LE"),attrs([])),prod([lit(">=")],sort("T-GE"),attrs([])),prod([lit("True")],sort("BOOL-VAL"),attrs([])),prod([lit("False")],sort("BOOL-VAL"),attrs([])),prod([lit("If")],sort("T-IF"),attrs([])),prod([lit("Else")],sort("T-ELSE"),attrs([])),prod([lit("While")],sort("T-WHILE"),attrs([])),prod([lit("Return")],sort("T-RETURN"),attrs([])),prod([lit("Do")],sort("T-DO"),attrs([])),prod([lit("+=")],sort("T-PLUSEQ"),attrs([])),prod([lit("++")],sort("T-PLUSPLUS"),attrs([])),prod([lit("*=")],sort("T-MULTEQ"),attrs([])),prod([lit("&=")],sort("T-ANDEQ"),attrs([])),prod([lit("|=")],sort("T-OREQ"),attrs([])),prod([lit("min=")],sort("T-MINEQ"),attrs([])),prod([lit("max=")],sort("T-MAXEQ"),attrs([])),prod([lit("Sum")],sort("T-SUM"),attrs([])),prod([lit("Avg")],sort("T-AVG"),attrs([])),prod([lit("Count")],sort("T-COUNT"),attrs([])),prod([lit("Product")],sort("T-PRODUCT"),attrs([])),prod([lit("Max")],sort("T-MAX"),attrs([])),prod([lit("Min")],sort("T-MIN"),attrs([])),prod([lit("+INF")],sort("T-P-INF"),attrs([])),prod([lit("INF")],sort("T-P-INF"),attrs([])),prod([lit("-INF")],sort("T-M-INF"),attrs([])),prod([lit("::")],sort("T-DOUBLE-COLON"),attrs([])),prod([lit("All")],sort("T-ALL"),attrs([])),prod([lit("Exist")],sort("T-EXIST"),attrs([])),prod([lit("NIL")],sort("T-NIL"),attrs([])),prod([lit("->")],sort("T-RARROW"),attrs([]))]))]),module(unparameterized("Common"),[],[exports(conc-grammars(conc-grammars(lexical-syntax([prod([char-class(simple-charclass(present(range(short("0"),short("9")))))],sort("DIGIT"),attrs([])),prod([char-class(simple-charclass(present(conc(range(short("a"),short("z")),range(short("A"),short("Z")))))),iter-star(char-class(simple-charclass(present(conc(range(short("a"),short("z")),conc(range(short("A"),short("Z")),conc(range(short("0"),short("9")),short("\\_"))))))))],sort("ALPHANUM"),attrs([])),prod([sort("ALPHANUM")],sort("ID"),attrs([])),prod([iter(sort("DIGIT"))],sort("INT-NUM"),attrs([])),prod([iter(sort("DIGIT")),lit("."),iter-star(sort("DIGIT"))],sort("FLOAT-NUM"),attrs([])),prod([iter-star(char-class(comp(simple-charclass(present(conc(short("\\["),short("\\]")))))))],sort("USER-TEXT"),attrs([])),prod([lit("\\\""),iter-star(sort("StringChar")),lit("\\\"")],sort("STRING"),attrs([])),prod([char-class(comp(simple-charclass(present(conc(short("\\\""),short("\\n"))))))],sort("StringChar"),attrs([])),prod([lit("\\\\\\\"")],sort("StringChar"),attrs([])),prod([sort("BackSlashChar")],sort("StringChar"),attrs([])),prod([lit("\\\\")],sort("BackSlashChar"),attrs([])),prod([char-class(simple-charclass(present(conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),short("\\r")))))))],layout,attrs([])),prod([char-class(simple-charclass(present(short("\\*"))))],sort("CommentChar"),attrs([])),prod([lit("/*"),iter-star(alt(char-class(comp(simple-charclass(present(short("\\*"))))),sort("CommentChar"))),lit("*/")],layout,attrs([])),prod([lit("//"),iter-star(char-class(comp(simple-charclass(present(conc(short("\\n"),short("\\r"))))))),alt(char-class(simple-charclass(present(conc(short("\\n"),short("\\r"))))),sort("EOF"))],layout,attrs([])),prod([],sort("EOF"),attrs([]))]),lexical-restrictions([follow([sort("CommentChar")],single(char-class(simple-charclass(present(short("\\/")))))),follow([sort("INT-NUM")],single(char-class(simple-charclass(present(range(short("0"),short("9"))))))),follow([sort("FLOAT-NUM")],single(char-class(simple-charclass(present(conc(range(short("0"),short("9")),short("\\."))))))),follow([sort("ID")],single(char-class(simple-charclass(present(conc(range(short("a"),short("z")),conc(range(short("A"),short("Z")),conc(range(short("0"),short("9")),short("\\_"))))))))),follow([sort("USER-TEXT")],single(char-class(comp(simple-charclass(present(short("\\]"))))))),follow([sort("EOF")],single(char-class(comp(simple-charclass(absent))))),follow([sort("BackSlashChar")],single(char-class(simple-charclass(present(short("\\\""))))))])),context-free-restrictions([follow([opt(layout)],single(char-class(simple-charclass(present(conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),short("\\r"))))))))),follow([opt(layout)],single(seq(simple-charclass(present(short("\\/"))),single(char-class(simple-charclass(present(short("\\/")))))))),follow([opt(layout)],single(seq(simple-charclass(present(short("\\/"))),single(char-class(simple-charclass(present(short("\\*"))))))))])))]),module(unparameterized("Green-Marl"),[imports([module(unparameterized("Common")),module(unparameterized("Keywords"))])],[exports(conc-grammars(conc-grammars(context-free-priorities([chain([prods-group([prod([lit("-"),sort("Expr")],sort("Expr"),attrs([])),prod([lit("!"),sort("Expr")],sort("Expr"),attrs([]))]),prods-group([prod([sort("Expr"),lit("*"),sort("Expr")],sort("Expr"),attrs([])),prod([sort("Expr"),lit("/"),sort("Expr")],sort("Expr"),attrs([])),prod([sort("Expr"),lit("%"),sort("Expr")],sort("Expr"),attrs([]))]),prods-group([prod([sort("Expr"),lit("+"),sort("Expr")],sort("Expr"),attrs([])),prod([sort("Expr"),lit("-"),sort("Expr")],sort("Expr"),attrs([]))]),prods-group([prod([sort("Expr"),lit("<"),sort("Expr")],sort("Expr"),attrs([])),prod([sort("Expr"),lit(">"),sort("Expr")],sort("Expr"),attrs([])),prod([sort("Expr"),sort("T-LE"),sort("Expr")],sort("Expr"),attrs([])),prod([sort("Expr"),sort("T-GE"),sort("Expr")],sort("Expr"),attrs([]))]),prods-group([prod([sort("Expr"),sort("T-EQ"),sort("Expr")],sort("Expr"),attrs([])),prod([sort("Expr"),sort("T-NEQ"),sort("Expr")],sort("Expr"),attrs([]))]),prods-group([prod([sort("Expr"),sort("T-AND"),sort("Expr")],sort("Expr"),attrs([]))]),prods-group([prod([sort("Expr"),sort("T-OR"),sort("Expr")],sort("Expr"),attrs([]))]),prods-group([prod([sort("Expr"),lit("?"),sort("Expr"),lit(":"),sort("Expr")],sort("Expr"),attrs([]))])])]),context-free-start-symbols([sort("Prog")])),context-free-syntax([prod([iter-star(sort("Proc-def"))],sort("Prog"),attrs([term(cons("Prog"))])),prod([sort("Proc-head"),sort("Proc-body")],sort("Proc-def"),attrs([term(cons("Proc-def"))])),prod([sort("Proc-name"),lit("("),sort("Arg-declist1"),lit(")"),opt(sort("Proc-return-opt"))],sort("Proc-head"),attrs([term(cons("Proc-head"))])),prod([sort("Proc-name"),lit("("),sort("Arg-declist1"),lit(";"),sort("Arg-declist2"),lit(")"),opt(sort("Proc-return-opt"))],sort("Proc-head"),attrs([term(cons("Proc-head"))])),prod([sort("T-PROC"),sort("Id")],sort("Proc-name"),attrs([term(cons("Proc-name"))])),prod([sort("T-LOCAL"),sort("Id")],sort("Proc-name"),attrs([term(cons("Proc-name"))])),prod([iter-star-sep(sort("Arg-decl"),lit(","))],sort("Arg-declist1"),attrs([term(cons("Arg-declist1"))])),prod([iter-sep(sort("Arg-decl"),lit(","))],sort("Arg-declist2"),attrs([term(cons("Arg-declist2"))])),prod([sort("Proc-return")],sort("Proc-return-opt"),attrs([term(cons("Proc-return-opt"))])),prod([lit(":"),sort("Prim-type")],sort("Proc-return"),attrs([term(cons("Proc-return"))])),prod([lit(":"),sort("Node-type")],sort("Proc-return"),attrs([term(cons("Proc-return"))])),prod([sort("Arg-target"),lit(":"),sort("Typedecl")],sort("Arg-decl"),attrs([term(cons("Arg-decl"))])),prod([sort("Id-comma-list")],sort("Arg-target"),attrs([term(cons("Arg-target"))])),prod([sort("Prim-type")],sort("Typedecl"),attrs([term(cons("Typedecl"))])),prod([sort("Graph-type")],sort("Typedecl"),attrs([term(cons("Typedecl"))])),prod([sort("Property")],sort("Typedecl"),attrs([term(cons("Typedecl"))])),prod([sort("NodeEdge-type")],sort("Typedecl"),attrs([term(cons("Typedecl"))])),prod([sort("Set-type")],sort("Typedecl"),attrs([term(cons("Typedecl"))])),prod([sort("T-GRAPH")],sort("Graph-type"),attrs([term(cons("Graph-type"))])),prod([sort("T-INT")],sort("Prim-type"),attrs([term(cons("Prim-type"))])),prod([sort("T-LONG")],sort("Prim-type"),attrs([term(cons("Prim-type"))])),prod([sort("T-FLOAT")],sort("Prim-type"),attrs([term(cons("Prim-type"))])),prod([sort("T-DOUBLE")],sort("Prim-type"),attrs([term(cons("Prim-type"))])),prod([sort("T-BOOL")],sort("Prim-type"),attrs([term(cons("Prim-type"))])),prod([sort("Node-type")],sort("NodeEdge-type"),attrs([term(cons("NodeEdge-type"))])),prod([sort("Edge-type")],sort("NodeEdge-type"),attrs([term(cons("NodeEdge-type"))])),prod([sort("T-NODE"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Node-type"),attrs([term(cons("Node-type"))])),prod([sort("T-EDGE"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Edge-type"),attrs([term(cons("Edge-type"))])),prod([sort("T-NSET"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Set-type"),attrs([term(cons("Set-type"))])),prod([sort("T-NSEQ"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Set-type"),attrs([term(cons("Set-type"))])),prod([sort("T-NORDER"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Set-type"),attrs([term(cons("Set-type"))])),prod([sort("T-NODEPROP"),lit("<"),sort("Prim-type"),lit(">"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Property"),attrs([term(cons("Property"))])),prod([sort("T-NODEPROP"),lit("<"),sort("NodeEdge-type"),lit(">"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Property"),attrs([term(cons("Property"))])),prod([sort("T-NODEPROP"),lit("<"),sort("Set-type"),lit(">"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Property"),attrs([term(cons("Property"))])),prod([sort("T-EDGEPROP"),lit("<"),sort("Prim-type"),lit(">"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Property"),attrs([term(cons("Property"))])),prod([sort("T-EDGEPROP"),lit("<"),sort("NodeEdge-type"),lit(">"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Property"),attrs([term(cons("Property"))])),prod([sort("T-EDGEPROP"),lit("<"),sort("Set-type"),lit(">"),opt(seq(lit("("),[sort("Id"),lit(")")]))],sort("Property"),attrs([term(cons("Property"))])),prod([iter-star-sep(sort("Id"),lit(","))],sort("Id-comma-list"),attrs([term(cons("Id-comma-list"))])),prod([sort("Sent-block")],sort("Proc-body"),attrs([term(cons("Proc-body"))])),prod([lit("{"),opt(sort("Sent-list")),lit("}")],sort("Sent-block"),attrs([term(cons("Sent-block"))])),prod([iter(sort("Sent"))],sort("Sent-list"),attrs([term(cons("Sent-list"))])),prod([sort("Sent-assignment"),lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-variable-decl"),lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-block")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-foreach")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-if")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-Reduce-assignment"),lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-defer-assignment"),lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-do-while"),lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-while")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-return"),lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-bfs")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-dfs")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-call"),lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-user"),lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Sent-argMinmax-assignment"),lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([lit(";")],sort("Sent"),attrs([term(cons("Sent"))])),prod([sort("Built-in")],sort("Sent-call"),attrs([term(cons("Sent-call"))])),prod([sort("T-WHILE"),lit("("),sort("Bool-expr"),lit(")"),sort("Sent-block")],sort("Sent-while"),attrs([term(cons("Sent-while"))])),prod([sort("T-DO"),sort("Sent-block"),sort("T-WHILE"),lit("("),sort("Bool-expr"),lit(")")],sort("Sent-do-while"),attrs([term(cons("Sent-do-while"))])),prod([sort("T-FOREACH"),sort("Foreach-header"),opt(sort("Foreach-filter")),sort("Sent")],sort("Sent-foreach"),attrs([term(cons("Sent-foreach"))])),prod([sort("T-FOR"),sort("Foreach-header"),opt(sort("Foreach-filter")),sort("Sent")],sort("Sent-foreach"),attrs([term(cons("Sent-foreach"))])),prod([lit("("),sort("Id"),lit(":"),sort("Id"),lit("."),sort("Iterator1"),lit(")")],sort("Foreach-header"),attrs([term(cons("Foreach-header"))])),prod([lit("("),sort("Id"),lit(":"),sort("Id"),lit("+"),lit("."),sort("Iterator1"),lit(")")],sort("Foreach-header"),attrs([term(cons("Foreach-header"))])),prod([lit("("),sort("Id"),lit(":"),sort("Id"),lit("-"),lit("."),sort("Iterator1"),lit(")")],sort("Foreach-header"),attrs([term(cons("Foreach-header"))])),prod([lit("("),sort("Bool-expr"),lit(")")],sort("Foreach-filter"),attrs([term(cons("Foreach-filter"))])),prod([sort("T-NODES")],sort("Iterator1"),attrs([term(cons("Iterator1"))])),prod([sort("T-EDGES")],sort("Iterator1"),attrs([term(cons("Iterator1"))])),prod([sort("T-NBRS")],sort("Iterator1"),attrs([term(cons("Iterator1"))])),prod([sort("T-IN-NBRS")],sort("Iterator1"),attrs([term(cons("Iterator1"))])),prod([sort("T-UP-NBRS")],sort("Iterator1"),attrs([term(cons("Iterator1"))])),prod([sort("T-DOWN-NBRS")],sort("Iterator1"),attrs([term(cons("Iterator1"))])),prod([sort("T-ITEMS")],sort("Iterator1"),attrs([term(cons("Iterator1"))])),prod([sort("T-COMMON-NBRS"),lit("("),sort("Id"),lit(")")],sort("Iterator1"),attrs([term(cons("Iterator1"))])),prod([sort("T-DFS"),sort("Bfs-header-format"),opt(sort("Bfs-filters")),sort("Sent-block"),opt(sort("Dfs-post"))],sort("Sent-dfs"),attrs([term(cons("Sent-dfs"))])),prod([sort("T-BFS"),sort("Bfs-header-format"),opt(sort("Bfs-filters")),sort("Sent-block"),opt(sort("Bfs-reverse"))],sort("Sent-bfs"),attrs([term(cons("Sent-bfs"))])),prod([sort("T-POST"),sort("Bfs-filter"),sort("Sent-block")],sort("Dfs-post"),attrs([term(cons("Dfs-post"))])),prod([sort("T-POST"),sort("Sent-block")],sort("Dfs-post"),attrs([term(cons("Dfs-post"))])),prod([sort("T-BACK"),sort("Bfs-filter"),sort("Sent-block")],sort("Bfs-reverse"),attrs([term(cons("Bfs-reverse"))])),prod([sort("T-BACK"),sort("Sent-block")],sort("Bfs-reverse"),attrs([term(cons("Bfs-reverse"))])),prod([lit("("),sort("Id"),lit(":"),sort("Id"),opt(sort("Opt-tp")),lit("."),sort("T-NODES"),sort("From-or-semi"),sort("Id"),lit(")")],sort("Bfs-header-format"),attrs([term(cons("Bfs-header-format"))])),prod([lit("^")],sort("Opt-tp"),attrs([term(cons("Opt-tp"))])),prod([sort("T-FROM")],sort("From-or-semi"),attrs([term(cons("From-or-semi"))])),prod([lit(";")],sort("From-or-semi"),attrs([term(cons("From-or-semi"))])),prod([sort("Bfs-navigator")],sort("Bfs-filters"),attrs([term(cons("Bfs-filters"))])),prod([sort("Bfs-filter")],sort("Bfs-filters"),attrs([term(cons("Bfs-filters"))])),prod([sort("Bfs-navigator"),sort("Bfs-filter")],sort("Bfs-filters"),attrs([term(cons("Bfs-filters"))])),prod([sort("Bfs-filter"),sort("Bfs-navigator")],sort("Bfs-filters"),attrs([term(cons("Bfs-filters"))])),prod([lit("["),sort("Expr"),lit("]")],sort("Bfs-navigator"),attrs([term(cons("Bfs-navigator"))])),prod([lit("("),sort("Expr"),lit(")")],sort("Bfs-filter"),attrs([term(cons("Bfs-filter"))])),prod([sort("Typedecl"),sort("Var-target")],sort("Sent-variable-decl"),attrs([term(cons("Sent-variable-decl"))])),prod([sort("Typedecl"),sort("Id"),lit("="),sort("Rhs")],sort("Sent-variable-decl"),attrs([term(cons("Sent-variable-decl"))])),prod([sort("Id-comma-list")],sort("Var-target"),attrs([term(cons("Var-target"))])),prod([sort("Lhs"),lit("="),sort("Rhs")],sort("Sent-assignment"),attrs([term(cons("Sent-assignment"))])),prod([sort("Lhs"),sort("Reduce-eq"),sort("Rhs"),opt(sort("Optional-bind"))],sort("Sent-Reduce-assignment"),attrs([term(cons("Sent-Reduce-assignment"))])),prod([sort("Lhs"),sort("T-PLUSPLUS"),opt(sort("Optional-bind"))],sort("Sent-Reduce-assignment"),attrs([term(cons("Sent-Reduce-assignment"))])),prod([sort("Lhs"),sort("T-LE"),sort("Rhs"),opt(sort("Optional-bind"))],sort("Sent-defer-assignment"),attrs([term(cons("Sent-defer-assignment"))])),prod([sort("Lhs-list2"),sort("Minmax-eq"),sort("Rhs-list2"),opt(sort("Optional-bind"))],sort("Sent-argMinmax-assignment"),attrs([term(cons("Sent-argMinmax-assignment"))])),prod([lit("@"),sort("Id")],sort("Optional-bind"),attrs([term(cons("Optional-bind"))])),prod([sort("T-PLUSEQ")],sort("Reduce-eq"),attrs([term(cons("Reduce-eq"))])),prod([sort("T-MULTEQ")],sort("Reduce-eq"),attrs([term(cons("Reduce-eq"))])),prod([sort("T-MINEQ")],sort("Reduce-eq"),attrs([term(cons("Reduce-eq"))])),prod([sort("T-MAXEQ")],sort("Reduce-eq"),attrs([term(cons("Reduce-eq"))])),prod([sort("T-ANDEQ")],sort("Reduce-eq"),attrs([term(cons("Reduce-eq"))])),prod([sort("T-OREQ")],sort("Reduce-eq"),attrs([term(cons("Reduce-eq"))])),prod([sort("T-MINEQ")],sort("Minmax-eq"),attrs([term(cons("Minmax-eq"))])),prod([sort("T-MAXEQ")],sort("Minmax-eq"),attrs([term(cons("Minmax-eq"))])),prod([sort("Expr")],sort("Rhs"),attrs([term(cons("Rhs"))])),prod([sort("T-RETURN"),sort("Expr")],sort("Sent-return"),attrs([term(cons("Sent-return"))])),prod([sort("T-RETURN")],sort("Sent-return"),attrs([term(cons("Sent-return"))])),prod([sort("T-IF"),lit("("),sort("Bool-expr"),lit(")"),sort("Sent")],sort("Sent-if"),attrs([term(cons("Sent-if"))])),prod([sort("T-IF"),lit("("),sort("Bool-expr"),lit(")"),sort("Sent"),sort("T-ELSE"),sort("Sent")],sort("Sent-if"),attrs([term(cons("Sent-if"))])),prod([sort("Expr-user")],sort("Sent-user"),attrs([term(cons("Sent-user"))])),prod([sort("Expr-user"),sort("T-DOUBLE-COLON"),lit("["),sort("Lhs-list"),lit("]")],sort("Sent-user"),attrs([term(cons("Sent-user"))])),prod([lit("("),sort("Expr"),lit(")")],sort("Expr"),attrs([term(cons("ParenthesisExpr"))])),prod([lit("|"),sort("Expr"),lit("|")],sort("Expr"),attrs([term(cons("AbsoluteExpr"))])),prod([lit("-"),sort("Expr")],sort("Expr"),attrs([term(cons("NegativeExpr"))])),prod([lit("!"),sort("Expr")],sort("Expr"),attrs([term(cons("NotExpr"))])),prod([lit("("),sort("Prim-type"),lit(")"),sort("Expr")],sort("Expr"),attrs([term(cons("Expr"))])),prod([sort("Reduce-op"),lit("("),sort("Id"),lit(":"),sort("Id"),lit("."),sort("Iterator1"),lit(")"),lit("("),sort("Expr"),lit(")"),lit("{"),sort("Expr"),lit("}")],sort("Expr"),attrs([term(cons("Expr"))])),prod([sort("Reduce-op"),lit("("),sort("Id"),lit(":"),sort("Id"),lit("."),sort("Iterator1"),lit(")"),lit("{"),sort("Expr"),lit("}")],sort("Expr"),attrs([term(cons("Expr"))])),prod([sort("Reduce-op2"),lit("("),sort("Id"),lit(":"),sort("Id"),lit("."),sort("Iterator1"),lit(")"),lit("("),sort("Expr"),lit(")")],sort("Expr"),attrs([term(cons("Expr"))])),prod([sort("Reduce-op2"),lit("("),sort("Id"),lit(":"),sort("Id"),lit("."),sort("Iterator1"),lit(")")],sort("Expr"),attrs([term(cons("Expr"))])),prod([sort("Expr"),lit("%"),sort("Expr")],sort("Expr"),attrs([term(cons("ModuloExpr"))])),prod([sort("Expr"),lit("*"),sort("Expr")],sort("Expr"),attrs([term(cons("MultiplyExpr"))])),prod([sort("Expr"),lit("/"),sort("Expr")],sort("Expr"),attrs([term(cons("DivideExpr"))])),prod([sort("Expr"),lit("+"),sort("Expr")],sort("Expr"),attrs([term(cons("AddExpr"))])),prod([sort("Expr"),lit("-"),sort("Expr")],sort("Expr"),attrs([term(cons("SubtractExpr"))])),prod([sort("Expr"),sort("T-LE"),sort("Expr")],sort("Expr"),attrs([term(cons("LessThanOrEqualExpr"))])),prod([sort("Expr"),sort("T-GE"),sort("Expr")],sort("Expr"),attrs([term(cons("GreaterThanOrEqualExpr"))])),prod([sort("Expr"),lit("<"),sort("Expr")],sort("Expr"),attrs([term(cons("LessThanExpr"))])),prod([sort("Expr"),lit(">"),sort("Expr")],sort("Expr"),attrs([term(cons("GreaterThanExpr"))])),prod([sort("Expr"),sort("T-EQ"),sort("Expr")],sort("Expr"),attrs([term(cons("EqualsExpr"))])),prod([sort("Expr"),sort("T-NEQ"),sort("Expr")],sort("Expr"),attrs([term(cons("NotEqualsExpr"))])),prod([sort("Expr"),sort("T-AND"),sort("Expr")],sort("Expr"),attrs([term(cons("AndExpr"))])),prod([sort("Expr"),sort("T-OR"),sort("Expr")],sort("Expr"),attrs([term(cons("OrExpr"))])),prod([sort("Expr"),lit("?"),sort("Expr"),lit(":"),sort("Expr")],sort("Expr"),attrs([term(cons("InlineIfExpr"))])),prod([sort("BOOL-VAL")],sort("Expr"),attrs([term(cons("BooleanExpr"))])),prod([sort("INT-NUM")],sort("Expr"),attrs([term(cons("IntExpr"))])),prod([sort("FLOAT-NUM")],sort("Expr"),attrs([term(cons("FloatExpr"))])),prod([sort("Inf")],sort("Expr"),attrs([term(cons("InfExpr"))])),prod([sort("T-NIL")],sort("Expr"),attrs([term(cons("NilExpr"))])),prod([sort("Scala")],sort("Expr"),attrs([term(cons("ScalaExpr"))])),prod([sort("Field")],sort("Expr"),attrs([term(cons("FieldExpr"))])),prod([sort("Built-in")],sort("Expr"),attrs([term(cons("BuiltinExpr"))])),prod([sort("Expr-user")],sort("Expr"),attrs([term(cons("UserExpr"))])),prod([sort("Expr")],sort("Bool-expr"),attrs([term(cons("Bool-expr"))])),prod([sort("Expr")],sort("Numeric-expr"),attrs([term(cons("Numeric-expr"))])),prod([sort("T-SUM")],sort("Reduce-op"),attrs([term(cons("Reduce-op"))])),prod([sort("T-PRODUCT")],sort("Reduce-op"),attrs([term(cons("Reduce-op"))])),prod([sort("T-MIN")],sort("Reduce-op"),attrs([term(cons("Reduce-op"))])),prod([sort("T-MAX")],sort("Reduce-op"),attrs([term(cons("Reduce-op"))])),prod([sort("T-EXIST")],sort("Reduce-op"),attrs([term(cons("Reduce-op"))])),prod([sort("T-ALL")],sort("Reduce-op"),attrs([term(cons("Reduce-op"))])),prod([sort("T-AVG")],sort("Reduce-op"),attrs([term(cons("Reduce-op"))])),prod([sort("T-COUNT")],sort("Reduce-op2"),attrs([term(cons("Reduce-op2"))])),prod([sort("T-P-INF")],sort("Inf"),attrs([term(cons("Inf"))])),prod([sort("T-M-INF")],sort("Inf"),attrs([term(cons("Inf"))])),prod([sort("Scala")],sort("Lhs"),attrs([term(cons("Lhs"))])),prod([sort("Field")],sort("Lhs"),attrs([term(cons("Lhs"))])),prod([iter-star-sep(sort("Lhs"),lit(","))],sort("Lhs-list"),attrs([term(cons("Lhs-list"))])),prod([sort("Id")],sort("Scala"),attrs([term(cons("Scala"))])),prod([sort("Id"),lit("."),sort("Id")],sort("Field"),attrs([term(cons("Field"))])),prod([sort("T-EDGE"),lit("("),sort("Id"),lit(")"),lit("."),sort("Id")],sort("Field"),attrs([term(cons("Field"))])),prod([sort("Id"),lit("."),sort("Id"),sort("Arg-list")],sort("Built-in"),attrs([term(cons("Built-in"))])),prod([sort("Id"),sort("Arg-list")],sort("Built-in"),attrs([term(cons("Built-in"))])),prod([sort("Field"),lit("."),sort("Id"),sort("Arg-list")],sort("Built-in"),attrs([term(cons("Built-in"))])),prod([lit("("),opt(sort("Expr-list")),lit(")")],sort("Arg-list"),attrs([term(cons("Arg-list"))])),prod([iter-sep(sort("Expr"),lit(","))],sort("Expr-list"),attrs([term(cons("Expr-list"))])),prod([lit("<"),sort("Lhs"),lit(";"),sort("Lhs-list"),lit(">")],sort("Lhs-list2"),attrs([term(cons("Lhs-list2"))])),prod([lit("<"),sort("Expr"),lit(";"),sort("Expr-list"),lit(">")],sort("Rhs-list2"),attrs([term(cons("Rhs-list2"))])),prod([lit("["),sort("USER-TEXT"),lit("]")],sort("Expr-user"),attrs([term(cons("Expr-user"))])),prod([sort("ID")],sort("Id"),attrs([term(cons("Id"))]))])))])])