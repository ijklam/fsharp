// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

/// Coordinating compiler operations - configuration, loading initial context, reporting errors etc.
module internal FSharp.Compiler.Features

/// LanguageFeature enumeration
[<RequireQualifiedAccess>]
type LanguageFeature =
    | SingleUnderscorePattern
    | WildCardInForLoop
    | RelaxWhitespace
    | RelaxWhitespace2
    | StrictIndentation
    | NameOf
    | ImplicitYield
    | OpenTypeDeclaration
    | DotlessFloat32Literal
    | PackageManagement
    | FromEndSlicing
    | FixedIndexSlice3d4d
    | AndBang
    | ResumableStateMachines
    | NullableOptionalInterop
    | DefaultInterfaceMemberConsumption
    | WitnessPassing
    | AdditionalTypeDirectedConversions
    | InterfacesWithMultipleGenericInstantiation
    | StringInterpolation
    | OverloadsForCustomOperations
    | ExpandedMeasurables
    | NullnessChecking
    | StructActivePattern
    | PrintfBinaryFormat
    | IndexerNotationWithoutDot
    | RefCellNotationInformationals
    | UseBindingValueDiscard
    | UnionIsPropertiesVisible
    | NonVariablePatternsToRightOfAsPatterns
    | AttributesToRightOfModuleKeyword
    | MLCompatRevisions
    | BetterExceptionPrinting
    | DelegateTypeNameResolutionFix
    | ReallyLongLists
    | ErrorOnDeprecatedRequireQualifiedAccess
    | RequiredPropertiesSupport
    | InitPropertiesSupport
    | LowercaseDUWhenRequireQualifiedAccess
    | InterfacesWithAbstractStaticMembers
    | SelfTypeConstraints
    | AccessorFunctionShorthand
    | MatchNotAllowedForUnionCaseWithNoData
    | CSharpExtensionAttributeNotRequired
    | ErrorForNonVirtualMembersOverrides
    | WarningWhenInliningMethodImplNoInlineMarkedFunction
    | EscapeDotnetFormattableStrings
    | ArithmeticInLiterals
    | ErrorReportingOnStaticClasses
    | TryWithInSeqExpression
    | WarningWhenCopyAndUpdateRecordChangesAllFields
    | StaticMembersInInterfaces
    | NonInlineLiteralsAsPrintfFormat
    | NestedCopyAndUpdate
    | ExtendedStringInterpolation
    | WarningWhenMultipleRecdTypeChoice
    | ImprovedImpliedArgumentNames
    | DiagnosticForObjInference
    | ConstraintIntersectionOnFlexibleTypes
    | StaticLetInRecordsDusEmptyTypes
    | WarningWhenTailRecAttributeButNonTailRecUsage
    | UnmanagedConstraintCsharpInterop
    | WhileBang
    | ReuseSameFieldsInStructUnions
    | ExtendedFixedBindings
    | PreferStringGetPinnableReference
    /// RFC-1137
    | PreferExtensionMethodOverPlainProperty
    | WarningIndexedPropertiesGetSetSameType
    | WarningWhenTailCallAttrOnNonRec
    | BooleanReturningAndReturnTypeDirectedPartialActivePattern
    | EnforceAttributeTargets
    | LowerInterpolatedStringToConcat
    | LowerIntegralRangesToFastLoops
    | AllowAccessModifiersToAutoPropertiesGettersAndSetters
    | LowerSimpleMappingsInComprehensionsToFastLoops
    | ParsedHashDirectiveArgumentNonQuotes
    | EmptyBodiedComputationExpressions
    | AllowObjectExpressionWithoutOverrides
    | DontWarnOnUppercaseIdentifiersInBindingPatterns
    | UseTypeSubsumptionCache
    | DeprecatePlacesWhereSeqCanBeOmitted
    | SupportValueOptionsAsOptionalParameters
    | WarnWhenUnitPassedToObjArg
    | UseBangBindingValueDiscard
    | BetterAnonymousRecordParsing
    | ScopedNowarn
    | AllowTypedLetUseAndBang

/// LanguageVersion management
type LanguageVersion =

    /// Create a LanguageVersion management object
    new: string -> LanguageVersion

    /// Get the list of valid versions
    static member ContainsVersion: string -> bool

    /// Has preview been explicitly specified
    member IsPreviewEnabled: bool

    /// Has been explicitly specified as 4.6, 4.7 or 5.0
    member IsExplicitlySpecifiedAs50OrBefore: unit -> bool

    /// Does the selected LanguageVersion support the specified feature
    member SupportsFeature: LanguageFeature -> bool

    /// Get the list of valid versions
    static member ValidVersions: string[]

    /// Get the list of valid options
    static member ValidOptions: string[]

    /// Get the specified LanguageVersion
    member SpecifiedVersion: decimal

    /// Get the text used to specify the version, several of which may map to the same version
    member VersionText: string

    /// Get the specified LanguageVersion as a string
    member SpecifiedVersionString: string

    /// Get a string name for the given feature.
    static member GetFeatureString: feature: LanguageFeature -> string

    /// Get a version string associated with the given feature.
    static member GetFeatureVersionString: feature: LanguageFeature -> string

    static member Default: LanguageVersion
