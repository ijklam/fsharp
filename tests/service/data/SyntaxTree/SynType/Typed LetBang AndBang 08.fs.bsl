ImplFile
  (ParsedImplFileInput
     ("/root/SynType/Typed LetBang AndBang 08.fs", false,
      QualifiedNameOfFile Module, [],
      [SynModuleOrNamespace
         ([Module], false, NamedModule,
          [Expr
             (App
                (NonAtomic, false, Ident async,
                 ComputationExpr
                   (false,
                    LetOrUseBang
                      (Yes (4,4--4,50), false, true,
                       Typed
                         (Paren
                            (LongIdent
                               (SynLongIdent ([Union], [], [None]), None, None,
                                Pats
                                  [Named
                                     (SynIdent (value, None), false, None,
                                      (4,16--4,21))], None, (4,10--4,21)),
                             (4,9--4,22)),
                          App
                            (LongIdent (SynLongIdent ([option], [], [None])),
                             None,
                             [LongIdent (SynLongIdent ([int], [], [None]))], [],
                             None, true, (4,24--4,34)), (4,9--4,34)),
                       App
                         (Atomic, false, Ident asyncOption,
                          Const (Unit, (4,48--4,50)), (4,37--4,50)),
                       [SynExprAndBang
                          (Yes (5,4--5,51), false, true,
                           Typed
                             (Paren
                                (LongIdent
                                   (SynLongIdent ([Union], [], [None]), None,
                                    None,
                                    Pats
                                      [Named
                                         (SynIdent (value2, None), false, None,
                                          (5,16--5,22))], None, (5,10--5,22)),
                                 (5,9--5,23)),
                              App
                                (LongIdent (SynLongIdent ([option], [], [None])),
                                 None,
                                 [LongIdent (SynLongIdent ([int], [], [None]))],
                                 [], None, true, (5,25--5,35)), (5,9--5,35)),
                           App
                             (Atomic, false, Ident asyncOption,
                              Const (Unit, (5,49--5,51)), (5,38--5,51)),
                           (5,4--5,51), { AndBangKeyword = (5,4--5,8)
                                          EqualsRange = (5,36--5,37)
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
                         EqualsRange = Some (4,35--4,36) }), (3,6--7,1)),
                 (3,0--7,1)), (3,0--7,1))],
          PreXmlDoc ((1,0), FSharp.Compiler.Xml.XmlDocCollector), [], None,
          (1,0--7,1), { LeadingKeyword = Module (1,0--1,6) })], (true, true),
      { ConditionalDirectives = []
        WarnDirectives = []
        CodeComments = [] }, set []))
