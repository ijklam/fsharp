ImplFile
  (ParsedImplFileInput
     ("/root/SynType/Typed LetBang AndBang 07.fs", false,
      QualifiedNameOfFile Module, [],
      [SynModuleOrNamespace
         ([Module], false, NamedModule,
          [Expr
             (App
                (NonAtomic, false, Ident async,
                 ComputationExpr
                   (false,
                    LetOrUseBang
                      (Yes (4,4--4,36), false, true,
                       LongIdent
                         (SynLongIdent ([Union], [], [None]), None, None,
                          Pats
                            [Named
                               (SynIdent (value, None), false, None,
                                (4,15--4,20))], None, (4,9--4,20)),
                       App
                         (Atomic, false, Ident asyncOption,
                          Const (Unit, (4,34--4,36)), (4,23--4,36)),
                       [SynExprAndBang
                          (Yes (5,4--5,37), false, true,
                           LongIdent
                             (SynLongIdent ([Union], [], [None]), None, None,
                              Pats
                                [Named
                                   (SynIdent (value2, None), false, None,
                                    (5,15--5,21))], None, (5,9--5,21)),
                           App
                             (Atomic, false, Ident asyncOption,
                              Const (Unit, (5,35--5,37)), (5,24--5,37)),
                           (5,4--5,37), { AndBangKeyword = (5,4--5,8)
                                          EqualsRange = (5,22--5,23)
                                          InKeyword = None })],
                       YieldOrReturn
                         ((false, true),
                          App
                            (NonAtomic, false,
                             App
                               (NonAtomic, true,
                                LongIdent
                                  (false,
                                   SynLongIdent
                                     ([op_Addition], [],
                                      [Some (OriginalNotation "+")]), None,
                                   (6,17--6,18)), Ident value, (6,11--6,18)),
                             Ident value2, (6,11--6,25)), (6,4--6,25),
                          { YieldOrReturnKeyword = (6,4--6,10) }), (4,4--6,25),
                       { LetOrUseBangKeyword = (4,4--4,8)
                         EqualsRange = Some (4,21--4,22) }), (3,6--7,1)),
                 (3,0--7,1)), (3,0--7,1))],
          PreXmlDoc ((1,0), FSharp.Compiler.Xml.XmlDocCollector), [], None,
          (1,0--7,1), { LeadingKeyword = Module (1,0--1,6) })], (true, true),
      { ConditionalDirectives = []
        WarnDirectives = []
        CodeComments = [] }, set []))
