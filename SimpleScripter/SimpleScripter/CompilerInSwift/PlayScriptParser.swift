// Generated from PlayScript.g4 by ANTLR 4.13.1

import Antlr4

open class PlayScriptParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = PlayScriptParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(PlayScriptParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, BOOLEAN = 1, BREAK = 2, BYTE = 3, CASE = 4, CATCH = 5, 
                 CHAR = 6, CLASS = 7, CONST = 8, CONTINUE = 9, DEFAULT = 10, 
                 DO = 11, DOUBLE = 12, ELSE = 13, ENUM = 14, EXTENDS = 15, 
                 FINAL = 16, FINALLY = 17, FLOAT = 18, FOR = 19, IF = 20, 
                 IMPLEMENTS = 21, IMPORT = 22, INSTANCEOF = 23, INT = 24, 
                 INTERFACE = 25, LONG = 26, NATIVE = 27, NEW = 28, PACKAGE = 29, 
                 PRIVATE = 30, PROTECTED = 31, PUBLIC = 32, RETURN = 33, 
                 SHORT = 34, SUPER = 35, SWITCH = 36, THIS = 37, VOID = 38, 
                 WHILE = 39, IntegerLiteral = 40, FloatingPointLiteral = 41, 
                 BooleanLiteral = 42, CharacterLiteral = 43, StringLiteral = 44, 
                 NullLiteral = 45, LPAREN = 46, RPAREN = 47, LBRACE = 48, 
                 RBRACE = 49, LBRACK = 50, RBRACK = 51, SEMI = 52, COMMA = 53, 
                 DOT = 54, ELLIPSIS = 55, AT = 56, COLONCOLON = 57, ASSIGN = 58, 
                 GT = 59, LT = 60, BANG = 61, TILDE = 62, QUESTION = 63, 
                 COLON = 64, ARROW = 65, EQUAL = 66, LE = 67, GE = 68, NOTEQUAL = 69, 
                 AND = 70, OR = 71, INC = 72, DEC = 73, ADD = 74, SUB = 75, 
                 MUL = 76, DIV = 77, BITAND = 78, BITOR = 79, CARET = 80, 
                 MOD = 81, ADD_ASSIGN = 82, SUB_ASSIGN = 83, MUL_ASSIGN = 84, 
                 DIV_ASSIGN = 85, AND_ASSIGN = 86, OR_ASSIGN = 87, XOR_ASSIGN = 88, 
                 MOD_ASSIGN = 89, LSHIFT_ASSIGN = 90, RSHIFT_ASSIGN = 91, 
                 URSHIFT_ASSIGN = 92, Identifier = 93, WS = 94, COMMENT = 95, 
                 LINE_COMMENT = 96, IDENTIFIER = 97, THROWS = 98, CHAR_LITERAL = 99, 
                 STRING_LITERAL = 100, BOOL_LITERAL = 101, NULL_LITERAL = 102, 
                 DECIMAL_LITERAL = 103, HEX_LITERAL = 104, OCT_LITERAL = 105, 
                 BINARY_LITERAL = 106, FLOAT_LITERAL = 107, HEX_FLOAT_LITERAL = 108, 
                 FUNCTION = 109, STRING = 110
	}

	public
	static let RULE_classDeclaration = 0, RULE_classBody = 1, RULE_classBodyDeclaration = 2, 
            RULE_memberDeclaration = 3, RULE_functionDeclaration = 4, RULE_functionBody = 5, 
            RULE_typeTypeOrVoid = 6, RULE_qualifiedNameList = 7, RULE_formalParameters = 8, 
            RULE_formalParameterList = 9, RULE_formalParameter = 10, RULE_lastFormalParameter = 11, 
            RULE_variableModifier = 12, RULE_qualifiedName = 13, RULE_fieldDeclaration = 14, 
            RULE_constructorDeclaration = 15, RULE_variableDeclarators = 16, 
            RULE_variableDeclarator = 17, RULE_variableDeclaratorId = 18, 
            RULE_variableInitializer = 19, RULE_arrayInitializer = 20, RULE_classOrInterfaceType = 21, 
            RULE_typeArgument = 22, RULE_literal = 23, RULE_integerLiteral = 24, 
            RULE_floatLiteral = 25, RULE_prog = 26, RULE_block = 27, RULE_blockStatements = 28, 
            RULE_blockStatement = 29, RULE_statement = 30, RULE_switchBlockStatementGroup = 31, 
            RULE_switchLabel = 32, RULE_forControl = 33, RULE_forInit = 34, 
            RULE_enhancedForControl = 35, RULE_parExpression = 36, RULE_expressionList = 37, 
            RULE_functionCall = 38, RULE_expression = 39, RULE_primary = 40, 
            RULE_typeList = 41, RULE_typeType = 42, RULE_functionType = 43, 
            RULE_primitiveType = 44, RULE_creator = 45, RULE_superSuffix = 46, 
            RULE_arguments = 47

	public
	static let ruleNames: [String] = [
		"classDeclaration", "classBody", "classBodyDeclaration", "memberDeclaration", 
		"functionDeclaration", "functionBody", "typeTypeOrVoid", "qualifiedNameList", 
		"formalParameters", "formalParameterList", "formalParameter", "lastFormalParameter", 
		"variableModifier", "qualifiedName", "fieldDeclaration", "constructorDeclaration", 
		"variableDeclarators", "variableDeclarator", "variableDeclaratorId", "variableInitializer", 
		"arrayInitializer", "classOrInterfaceType", "typeArgument", "literal", 
		"integerLiteral", "floatLiteral", "prog", "block", "blockStatements", 
		"blockStatement", "statement", "switchBlockStatementGroup", "switchLabel", 
		"forControl", "forInit", "enhancedForControl", "parExpression", "expressionList", 
		"functionCall", "expression", "primary", "typeList", "typeType", "functionType", 
		"primitiveType", "creator", "superSuffix", "arguments"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'boolean'", "'break'", "'byte'", "'case'", "'catch'", "'char'", 
		"'class'", "'const'", "'continue'", "'default'", "'do'", "'double'", "'else'", 
		"'enum'", "'extends'", "'final'", "'finally'", "'float'", "'for'", "'if'", 
		"'implements'", "'import'", "'instanceof'", "'int'", "'interface'", "'long'", 
		"'native'", "'new'", "'package'", "'private'", "'protected'", "'public'", 
		"'return'", "'short'", "'super'", "'switch'", "'this'", "'void'", "'while'", 
		nil, nil, nil, nil, nil, "'null'", "'('", "')'", "'{'", "'}'", "'['", 
		"']'", "';'", "','", "'.'", "'...'", "'@'", "'::'", "'='", "'>'", "'<'", 
		"'!'", "'~'", "'?'", "':'", "'->'", "'=='", "'<='", "'>='", "'!='", "'&&'", 
		"'||'", "'++'", "'--'", "'+'", "'-'", "'*'", "'/'", "'&'", "'|'", "'^'", 
		"'%'", "'+='", "'-='", "'*='", "'/='", "'&='", "'|='", "'^='", "'%='", 
		"'<<='", "'>>='", "'>>>='"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "BOOLEAN", "BREAK", "BYTE", "CASE", "CATCH", "CHAR", "CLASS", "CONST", 
		"CONTINUE", "DEFAULT", "DO", "DOUBLE", "ELSE", "ENUM", "EXTENDS", "FINAL", 
		"FINALLY", "FLOAT", "FOR", "IF", "IMPLEMENTS", "IMPORT", "INSTANCEOF", 
		"INT", "INTERFACE", "LONG", "NATIVE", "NEW", "PACKAGE", "PRIVATE", "PROTECTED", 
		"PUBLIC", "RETURN", "SHORT", "SUPER", "SWITCH", "THIS", "VOID", "WHILE", 
		"IntegerLiteral", "FloatingPointLiteral", "BooleanLiteral", "CharacterLiteral", 
		"StringLiteral", "NullLiteral", "LPAREN", "RPAREN", "LBRACE", "RBRACE", 
		"LBRACK", "RBRACK", "SEMI", "COMMA", "DOT", "ELLIPSIS", "AT", "COLONCOLON", 
		"ASSIGN", "GT", "LT", "BANG", "TILDE", "QUESTION", "COLON", "ARROW", "EQUAL", 
		"LE", "GE", "NOTEQUAL", "AND", "OR", "INC", "DEC", "ADD", "SUB", "MUL", 
		"DIV", "BITAND", "BITOR", "CARET", "MOD", "ADD_ASSIGN", "SUB_ASSIGN", 
		"MUL_ASSIGN", "DIV_ASSIGN", "AND_ASSIGN", "OR_ASSIGN", "XOR_ASSIGN", "MOD_ASSIGN", 
		"LSHIFT_ASSIGN", "RSHIFT_ASSIGN", "URSHIFT_ASSIGN", "Identifier", "WS", 
		"COMMENT", "LINE_COMMENT", "IDENTIFIER", "THROWS", "CHAR_LITERAL", "STRING_LITERAL", 
		"BOOL_LITERAL", "NULL_LITERAL", "DECIMAL_LITERAL", "HEX_LITERAL", "OCT_LITERAL", 
		"BINARY_LITERAL", "FLOAT_LITERAL", "HEX_FLOAT_LITERAL", "FUNCTION", "STRING"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "PlayScript.g4" }

	override open
	func getRuleNames() -> [String] { return PlayScriptParser.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return PlayScriptParser._serializedATN }

	override open
	func getATN() -> ATN { return PlayScriptParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return PlayScriptParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,PlayScriptParser._ATN,PlayScriptParser._decisionToDFA, PlayScriptParser._sharedContextCache)
	}


	public class ClassDeclarationContext: ParserRuleContext {
			open
			func CLASS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CLASS.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func classBody() -> ClassBodyContext? {
				return getRuleContext(ClassBodyContext.self, 0)
			}
			open
			func EXTENDS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.EXTENDS.rawValue, 0)
			}
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func IMPLEMENTS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IMPLEMENTS.rawValue, 0)
			}
			open
			func typeList() -> TypeListContext? {
				return getRuleContext(TypeListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_classDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterClassDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitClassDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitClassDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitClassDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func classDeclaration() throws -> ClassDeclarationContext {
		var _localctx: ClassDeclarationContext
		_localctx = ClassDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 0, PlayScriptParser.RULE_classDeclaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(96)
		 	try match(PlayScriptParser.Tokens.CLASS.rawValue)
		 	setState(97)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(100)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == PlayScriptParser.Tokens.EXTENDS.rawValue) {
		 		setState(98)
		 		try match(PlayScriptParser.Tokens.EXTENDS.rawValue)
		 		setState(99)
		 		try typeType()

		 	}

		 	setState(104)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == PlayScriptParser.Tokens.IMPLEMENTS.rawValue) {
		 		setState(102)
		 		try match(PlayScriptParser.Tokens.IMPLEMENTS.rawValue)
		 		setState(103)
		 		try typeList()

		 	}

		 	setState(106)
		 	try classBody()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ClassBodyContext: ParserRuleContext {
			open
			func LBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func classBodyDeclaration() -> [ClassBodyDeclarationContext] {
				return getRuleContexts(ClassBodyDeclarationContext.self)
			}
			open
			func classBodyDeclaration(_ i: Int) -> ClassBodyDeclarationContext? {
				return getRuleContext(ClassBodyDeclarationContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_classBody
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterClassBody(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitClassBody(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitClassBody(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitClassBody(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func classBody() throws -> ClassBodyContext {
		var _localctx: ClassBodyContext
		_localctx = ClassBodyContext(_ctx, getState())
		try enterRule(_localctx, 2, PlayScriptParser.RULE_classBody)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(108)
		 	try match(PlayScriptParser.Tokens.LBRACE.rawValue)
		 	setState(112)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 4503891769299146) != 0) || ((Int64((_la - 97)) & ~0x3f) == 0 && ((Int64(1) << (_la - 97)) & 12289) != 0)) {
		 		setState(109)
		 		try classBodyDeclaration()


		 		setState(114)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(115)
		 	try match(PlayScriptParser.Tokens.RBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ClassBodyDeclarationContext: ParserRuleContext {
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func memberDeclaration() -> MemberDeclarationContext? {
				return getRuleContext(MemberDeclarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_classBodyDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterClassBodyDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitClassBodyDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitClassBodyDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitClassBodyDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func classBodyDeclaration() throws -> ClassBodyDeclarationContext {
		var _localctx: ClassBodyDeclarationContext
		_localctx = ClassBodyDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 4, PlayScriptParser.RULE_classBodyDeclaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(119)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .SEMI:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(117)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case .BOOLEAN:fallthrough
		 	case .BYTE:fallthrough
		 	case .CHAR:fallthrough
		 	case .CLASS:fallthrough
		 	case .DOUBLE:fallthrough
		 	case .FLOAT:fallthrough
		 	case .INT:fallthrough
		 	case .LONG:fallthrough
		 	case .SHORT:fallthrough
		 	case .VOID:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .FUNCTION:fallthrough
		 	case .STRING:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(118)
		 		try memberDeclaration()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MemberDeclarationContext: ParserRuleContext {
			open
			func functionDeclaration() -> FunctionDeclarationContext? {
				return getRuleContext(FunctionDeclarationContext.self, 0)
			}
			open
			func fieldDeclaration() -> FieldDeclarationContext? {
				return getRuleContext(FieldDeclarationContext.self, 0)
			}
			open
			func classDeclaration() -> ClassDeclarationContext? {
				return getRuleContext(ClassDeclarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_memberDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterMemberDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitMemberDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitMemberDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitMemberDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func memberDeclaration() throws -> MemberDeclarationContext {
		var _localctx: MemberDeclarationContext
		_localctx = MemberDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 6, PlayScriptParser.RULE_memberDeclaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(124)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,4, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(121)
		 		try functionDeclaration()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(122)
		 		try fieldDeclaration()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(123)
		 		try classDeclaration()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionDeclarationContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func formalParameters() -> FormalParametersContext? {
				return getRuleContext(FormalParametersContext.self, 0)
			}
			open
			func functionBody() -> FunctionBodyContext? {
				return getRuleContext(FunctionBodyContext.self, 0)
			}
			open
			func typeTypeOrVoid() -> TypeTypeOrVoidContext? {
				return getRuleContext(TypeTypeOrVoidContext.self, 0)
			}
			open
			func LBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.LBRACK.rawValue)
			}
			open
			func LBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACK.rawValue, i)
			}
			open
			func RBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.RBRACK.rawValue)
			}
			open
			func RBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACK.rawValue, i)
			}
			open
			func THROWS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.THROWS.rawValue, 0)
			}
			open
			func qualifiedNameList() -> QualifiedNameListContext? {
				return getRuleContext(QualifiedNameListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_functionDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFunctionDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFunctionDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFunctionDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFunctionDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionDeclaration() throws -> FunctionDeclarationContext {
		var _localctx: FunctionDeclarationContext
		_localctx = FunctionDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 8, PlayScriptParser.RULE_functionDeclaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(127)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,5,_ctx)) {
		 	case 1:
		 		setState(126)
		 		try typeTypeOrVoid()

		 		break
		 	default: break
		 	}
		 	setState(129)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(130)
		 	try formalParameters()
		 	setState(135)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == PlayScriptParser.Tokens.LBRACK.rawValue) {
		 		setState(131)
		 		try match(PlayScriptParser.Tokens.LBRACK.rawValue)
		 		setState(132)
		 		try match(PlayScriptParser.Tokens.RBRACK.rawValue)


		 		setState(137)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(140)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == PlayScriptParser.Tokens.THROWS.rawValue) {
		 		setState(138)
		 		try match(PlayScriptParser.Tokens.THROWS.rawValue)
		 		setState(139)
		 		try qualifiedNameList()

		 	}

		 	setState(142)
		 	try functionBody()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionBodyContext: ParserRuleContext {
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_functionBody
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFunctionBody(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFunctionBody(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFunctionBody(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFunctionBody(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionBody() throws -> FunctionBodyContext {
		var _localctx: FunctionBodyContext
		_localctx = FunctionBodyContext(_ctx, getState())
		try enterRule(_localctx, 10, PlayScriptParser.RULE_functionBody)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(146)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LBRACE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(144)
		 		try block()

		 		break

		 	case .SEMI:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(145)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeTypeOrVoidContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func VOID() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.VOID.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_typeTypeOrVoid
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterTypeTypeOrVoid(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitTypeTypeOrVoid(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitTypeTypeOrVoid(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitTypeTypeOrVoid(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeTypeOrVoid() throws -> TypeTypeOrVoidContext {
		var _localctx: TypeTypeOrVoidContext
		_localctx = TypeTypeOrVoidContext(_ctx, getState())
		try enterRule(_localctx, 12, PlayScriptParser.RULE_typeTypeOrVoid)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(150)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .BOOLEAN:fallthrough
		 	case .BYTE:fallthrough
		 	case .CHAR:fallthrough
		 	case .DOUBLE:fallthrough
		 	case .FLOAT:fallthrough
		 	case .INT:fallthrough
		 	case .LONG:fallthrough
		 	case .SHORT:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .FUNCTION:fallthrough
		 	case .STRING:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(148)
		 		try typeType()

		 		break

		 	case .VOID:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(149)
		 		try match(PlayScriptParser.Tokens.VOID.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class QualifiedNameListContext: ParserRuleContext {
			open
			func qualifiedName() -> [QualifiedNameContext] {
				return getRuleContexts(QualifiedNameContext.self)
			}
			open
			func qualifiedName(_ i: Int) -> QualifiedNameContext? {
				return getRuleContext(QualifiedNameContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_qualifiedNameList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterQualifiedNameList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitQualifiedNameList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitQualifiedNameList(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitQualifiedNameList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func qualifiedNameList() throws -> QualifiedNameListContext {
		var _localctx: QualifiedNameListContext
		_localctx = QualifiedNameListContext(_ctx, getState())
		try enterRule(_localctx, 14, PlayScriptParser.RULE_qualifiedNameList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(152)
		 	try qualifiedName()
		 	setState(157)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == PlayScriptParser.Tokens.COMMA.rawValue) {
		 		setState(153)
		 		try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 		setState(154)
		 		try qualifiedName()


		 		setState(159)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FormalParametersContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func formalParameterList() -> FormalParameterListContext? {
				return getRuleContext(FormalParameterListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_formalParameters
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFormalParameters(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFormalParameters(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFormalParameters(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFormalParameters(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func formalParameters() throws -> FormalParametersContext {
		var _localctx: FormalParametersContext
		_localctx = FormalParametersContext(_ctx, getState())
		try enterRule(_localctx, 16, PlayScriptParser.RULE_formalParameters)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(160)
		 	try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 	setState(162)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 17264087114) != 0) || ((Int64((_la - 97)) & ~0x3f) == 0 && ((Int64(1) << (_la - 97)) & 12289) != 0)) {
		 		setState(161)
		 		try formalParameterList()

		 	}

		 	setState(164)
		 	try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FormalParameterListContext: ParserRuleContext {
			open
			func formalParameter() -> [FormalParameterContext] {
				return getRuleContexts(FormalParameterContext.self)
			}
			open
			func formalParameter(_ i: Int) -> FormalParameterContext? {
				return getRuleContext(FormalParameterContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
			open
			func lastFormalParameter() -> LastFormalParameterContext? {
				return getRuleContext(LastFormalParameterContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_formalParameterList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFormalParameterList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFormalParameterList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFormalParameterList(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFormalParameterList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func formalParameterList() throws -> FormalParameterListContext {
		var _localctx: FormalParameterListContext
		_localctx = FormalParameterListContext(_ctx, getState())
		try enterRule(_localctx, 18, PlayScriptParser.RULE_formalParameterList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(179)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,14, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(166)
		 		try formalParameter()
		 		setState(171)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,12,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(167)
		 				try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 				setState(168)
		 				try formalParameter()

		 		 
		 			}
		 			setState(173)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,12,_ctx)
		 		}
		 		setState(176)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == PlayScriptParser.Tokens.COMMA.rawValue) {
		 			setState(174)
		 			try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 			setState(175)
		 			try lastFormalParameter()

		 		}


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(178)
		 		try lastFormalParameter()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FormalParameterContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func variableDeclaratorId() -> VariableDeclaratorIdContext? {
				return getRuleContext(VariableDeclaratorIdContext.self, 0)
			}
			open
			func variableModifier() -> [VariableModifierContext] {
				return getRuleContexts(VariableModifierContext.self)
			}
			open
			func variableModifier(_ i: Int) -> VariableModifierContext? {
				return getRuleContext(VariableModifierContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_formalParameter
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFormalParameter(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFormalParameter(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFormalParameter(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFormalParameter(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func formalParameter() throws -> FormalParameterContext {
		var _localctx: FormalParameterContext
		_localctx = FormalParameterContext(_ctx, getState())
		try enterRule(_localctx, 20, PlayScriptParser.RULE_formalParameter)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(184)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == PlayScriptParser.Tokens.FINAL.rawValue) {
		 		setState(181)
		 		try variableModifier()


		 		setState(186)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(187)
		 	try typeType()
		 	setState(188)
		 	try variableDeclaratorId()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LastFormalParameterContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func ELLIPSIS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ELLIPSIS.rawValue, 0)
			}
			open
			func variableDeclaratorId() -> VariableDeclaratorIdContext? {
				return getRuleContext(VariableDeclaratorIdContext.self, 0)
			}
			open
			func variableModifier() -> [VariableModifierContext] {
				return getRuleContexts(VariableModifierContext.self)
			}
			open
			func variableModifier(_ i: Int) -> VariableModifierContext? {
				return getRuleContext(VariableModifierContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_lastFormalParameter
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterLastFormalParameter(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitLastFormalParameter(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitLastFormalParameter(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitLastFormalParameter(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func lastFormalParameter() throws -> LastFormalParameterContext {
		var _localctx: LastFormalParameterContext
		_localctx = LastFormalParameterContext(_ctx, getState())
		try enterRule(_localctx, 22, PlayScriptParser.RULE_lastFormalParameter)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(193)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == PlayScriptParser.Tokens.FINAL.rawValue) {
		 		setState(190)
		 		try variableModifier()


		 		setState(195)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(196)
		 	try typeType()
		 	setState(197)
		 	try match(PlayScriptParser.Tokens.ELLIPSIS.rawValue)
		 	setState(198)
		 	try variableDeclaratorId()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableModifierContext: ParserRuleContext {
			open
			func FINAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FINAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableModifier
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableModifier(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableModifier(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableModifier(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableModifier(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableModifier() throws -> VariableModifierContext {
		var _localctx: VariableModifierContext
		_localctx = VariableModifierContext(_ctx, getState())
		try enterRule(_localctx, 24, PlayScriptParser.RULE_variableModifier)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(200)
		 	try match(PlayScriptParser.Tokens.FINAL.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class QualifiedNameContext: ParserRuleContext {
			open
			func IDENTIFIER() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
			}
			open
			func IDENTIFIER(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, i)
			}
			open
			func DOT() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.DOT.rawValue)
			}
			open
			func DOT(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOT.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_qualifiedName
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterQualifiedName(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitQualifiedName(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitQualifiedName(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitQualifiedName(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func qualifiedName() throws -> QualifiedNameContext {
		var _localctx: QualifiedNameContext
		_localctx = QualifiedNameContext(_ctx, getState())
		try enterRule(_localctx, 26, PlayScriptParser.RULE_qualifiedName)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(202)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(207)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == PlayScriptParser.Tokens.DOT.rawValue) {
		 		setState(203)
		 		try match(PlayScriptParser.Tokens.DOT.rawValue)
		 		setState(204)
		 		try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)


		 		setState(209)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FieldDeclarationContext: ParserRuleContext {
			open
			func variableDeclarators() -> VariableDeclaratorsContext? {
				return getRuleContext(VariableDeclaratorsContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_fieldDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFieldDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFieldDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFieldDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFieldDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func fieldDeclaration() throws -> FieldDeclarationContext {
		var _localctx: FieldDeclarationContext
		_localctx = FieldDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 28, PlayScriptParser.RULE_fieldDeclaration)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(210)
		 	try variableDeclarators()
		 	setState(211)
		 	try match(PlayScriptParser.Tokens.SEMI.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ConstructorDeclarationContext: ParserRuleContext {
		open var constructorBody: BlockContext!
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func formalParameters() -> FormalParametersContext? {
				return getRuleContext(FormalParametersContext.self, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func THROWS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.THROWS.rawValue, 0)
			}
			open
			func qualifiedNameList() -> QualifiedNameListContext? {
				return getRuleContext(QualifiedNameListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_constructorDeclaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterConstructorDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitConstructorDeclaration(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitConstructorDeclaration(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitConstructorDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func constructorDeclaration() throws -> ConstructorDeclarationContext {
		var _localctx: ConstructorDeclarationContext
		_localctx = ConstructorDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 30, PlayScriptParser.RULE_constructorDeclaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(213)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(214)
		 	try formalParameters()
		 	setState(217)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == PlayScriptParser.Tokens.THROWS.rawValue) {
		 		setState(215)
		 		try match(PlayScriptParser.Tokens.THROWS.rawValue)
		 		setState(216)
		 		try qualifiedNameList()

		 	}

		 	setState(219)
		 	try {
		 			let assignmentValue = try block()
		 			_localctx.castdown(ConstructorDeclarationContext.self).constructorBody = assignmentValue
		 	     }()


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableDeclaratorsContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func variableDeclarator() -> [VariableDeclaratorContext] {
				return getRuleContexts(VariableDeclaratorContext.self)
			}
			open
			func variableDeclarator(_ i: Int) -> VariableDeclaratorContext? {
				return getRuleContext(VariableDeclaratorContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableDeclarators
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableDeclarators(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableDeclarators(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableDeclarators(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableDeclarators(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableDeclarators() throws -> VariableDeclaratorsContext {
		var _localctx: VariableDeclaratorsContext
		_localctx = VariableDeclaratorsContext(_ctx, getState())
		try enterRule(_localctx, 32, PlayScriptParser.RULE_variableDeclarators)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(221)
		 	try typeType()
		 	setState(222)
		 	try variableDeclarator()
		 	setState(227)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == PlayScriptParser.Tokens.COMMA.rawValue) {
		 		setState(223)
		 		try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 		setState(224)
		 		try variableDeclarator()


		 		setState(229)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableDeclaratorContext: ParserRuleContext {
			open
			func variableDeclaratorId() -> VariableDeclaratorIdContext? {
				return getRuleContext(VariableDeclaratorIdContext.self, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func variableInitializer() -> VariableInitializerContext? {
				return getRuleContext(VariableInitializerContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableDeclarator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableDeclarator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableDeclarator(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableDeclarator(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableDeclarator(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableDeclarator() throws -> VariableDeclaratorContext {
		var _localctx: VariableDeclaratorContext
		_localctx = VariableDeclaratorContext(_ctx, getState())
		try enterRule(_localctx, 34, PlayScriptParser.RULE_variableDeclarator)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(230)
		 	try variableDeclaratorId()
		 	setState(233)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == PlayScriptParser.Tokens.ASSIGN.rawValue) {
		 		setState(231)
		 		try match(PlayScriptParser.Tokens.ASSIGN.rawValue)
		 		setState(232)
		 		try variableInitializer()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableDeclaratorIdContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func LBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.LBRACK.rawValue)
			}
			open
			func LBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACK.rawValue, i)
			}
			open
			func RBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.RBRACK.rawValue)
			}
			open
			func RBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACK.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableDeclaratorId
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableDeclaratorId(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableDeclaratorId(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableDeclaratorId(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableDeclaratorId(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableDeclaratorId() throws -> VariableDeclaratorIdContext {
		var _localctx: VariableDeclaratorIdContext
		_localctx = VariableDeclaratorIdContext(_ctx, getState())
		try enterRule(_localctx, 36, PlayScriptParser.RULE_variableDeclaratorId)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(235)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(240)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == PlayScriptParser.Tokens.LBRACK.rawValue) {
		 		setState(236)
		 		try match(PlayScriptParser.Tokens.LBRACK.rawValue)
		 		setState(237)
		 		try match(PlayScriptParser.Tokens.RBRACK.rawValue)


		 		setState(242)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableInitializerContext: ParserRuleContext {
			open
			func arrayInitializer() -> ArrayInitializerContext? {
				return getRuleContext(ArrayInitializerContext.self, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_variableInitializer
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterVariableInitializer(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitVariableInitializer(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitVariableInitializer(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitVariableInitializer(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func variableInitializer() throws -> VariableInitializerContext {
		var _localctx: VariableInitializerContext
		_localctx = VariableInitializerContext(_ctx, getState())
		try enterRule(_localctx, 38, PlayScriptParser.RULE_variableInitializer)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(245)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LBRACE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(243)
		 		try arrayInitializer()

		 		break
		 	case .SUPER:fallthrough
		 	case .THIS:fallthrough
		 	case .LPAREN:fallthrough
		 	case .BANG:fallthrough
		 	case .TILDE:fallthrough
		 	case .INC:fallthrough
		 	case .DEC:fallthrough
		 	case .ADD:fallthrough
		 	case .SUB:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .CHAR_LITERAL:fallthrough
		 	case .STRING_LITERAL:fallthrough
		 	case .BOOL_LITERAL:fallthrough
		 	case .NULL_LITERAL:fallthrough
		 	case .DECIMAL_LITERAL:fallthrough
		 	case .HEX_LITERAL:fallthrough
		 	case .OCT_LITERAL:fallthrough
		 	case .BINARY_LITERAL:fallthrough
		 	case .FLOAT_LITERAL:fallthrough
		 	case .HEX_FLOAT_LITERAL:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(244)
		 		try expression(0)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArrayInitializerContext: ParserRuleContext {
			open
			func LBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func variableInitializer() -> [VariableInitializerContext] {
				return getRuleContexts(VariableInitializerContext.self)
			}
			open
			func variableInitializer(_ i: Int) -> VariableInitializerContext? {
				return getRuleContext(VariableInitializerContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_arrayInitializer
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterArrayInitializer(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitArrayInitializer(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitArrayInitializer(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitArrayInitializer(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func arrayInitializer() throws -> ArrayInitializerContext {
		var _localctx: ArrayInitializerContext
		_localctx = ArrayInitializerContext(_ctx, getState())
		try enterRule(_localctx, 40, PlayScriptParser.RULE_arrayInitializer)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(247)
		 	try match(PlayScriptParser.Tokens.LBRACE.rawValue)
		 	setState(259)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6917881043160662016) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 137338290191) != 0)) {
		 		setState(248)
		 		try variableInitializer()
		 		setState(253)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,23,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(249)
		 				try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 				setState(250)
		 				try variableInitializer()

		 		 
		 			}
		 			setState(255)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,23,_ctx)
		 		}
		 		setState(257)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == PlayScriptParser.Tokens.COMMA.rawValue) {
		 			setState(256)
		 			try match(PlayScriptParser.Tokens.COMMA.rawValue)

		 		}


		 	}

		 	setState(261)
		 	try match(PlayScriptParser.Tokens.RBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ClassOrInterfaceTypeContext: ParserRuleContext {
			open
			func IDENTIFIER() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
			}
			open
			func IDENTIFIER(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, i)
			}
			open
			func DOT() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.DOT.rawValue)
			}
			open
			func DOT(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOT.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_classOrInterfaceType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterClassOrInterfaceType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitClassOrInterfaceType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitClassOrInterfaceType(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitClassOrInterfaceType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func classOrInterfaceType() throws -> ClassOrInterfaceTypeContext {
		var _localctx: ClassOrInterfaceTypeContext
		_localctx = ClassOrInterfaceTypeContext(_ctx, getState())
		try enterRule(_localctx, 42, PlayScriptParser.RULE_classOrInterfaceType)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(263)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(268)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,26,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(264)
		 			try match(PlayScriptParser.Tokens.DOT.rawValue)
		 			setState(265)
		 			try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

		 	 
		 		}
		 		setState(270)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,26,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeArgumentContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func QUESTION() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.QUESTION.rawValue, 0)
			}
			open
			func EXTENDS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.EXTENDS.rawValue, 0)
			}
			open
			func SUPER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SUPER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_typeArgument
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterTypeArgument(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitTypeArgument(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitTypeArgument(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitTypeArgument(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeArgument() throws -> TypeArgumentContext {
		var _localctx: TypeArgumentContext
		_localctx = TypeArgumentContext(_ctx, getState())
		try enterRule(_localctx, 44, PlayScriptParser.RULE_typeArgument)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(277)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .BOOLEAN:fallthrough
		 	case .BYTE:fallthrough
		 	case .CHAR:fallthrough
		 	case .DOUBLE:fallthrough
		 	case .FLOAT:fallthrough
		 	case .INT:fallthrough
		 	case .LONG:fallthrough
		 	case .SHORT:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .FUNCTION:fallthrough
		 	case .STRING:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(271)
		 		try typeType()

		 		break

		 	case .QUESTION:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(272)
		 		try match(PlayScriptParser.Tokens.QUESTION.rawValue)
		 		setState(275)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == PlayScriptParser.Tokens.EXTENDS.rawValue || _la == PlayScriptParser.Tokens.SUPER.rawValue) {
		 			setState(273)
		 			_la = try _input.LA(1)
		 			if (!(_la == PlayScriptParser.Tokens.EXTENDS.rawValue || _la == PlayScriptParser.Tokens.SUPER.rawValue)) {
		 			try _errHandler.recoverInline(self)
		 			}
		 			else {
		 				_errHandler.reportMatch(self)
		 				try consume()
		 			}
		 			setState(274)
		 			try typeType()

		 		}


		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LiteralContext: ParserRuleContext {
			open
			func integerLiteral() -> IntegerLiteralContext? {
				return getRuleContext(IntegerLiteralContext.self, 0)
			}
			open
			func floatLiteral() -> FloatLiteralContext? {
				return getRuleContext(FloatLiteralContext.self, 0)
			}
			open
			func CHAR_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CHAR_LITERAL.rawValue, 0)
			}
			open
			func STRING_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.STRING_LITERAL.rawValue, 0)
			}
			open
			func BOOL_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BOOL_LITERAL.rawValue, 0)
			}
			open
			func NULL_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.NULL_LITERAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_literal
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterLiteral(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitLiteral(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitLiteral(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func literal() throws -> LiteralContext {
		var _localctx: LiteralContext
		_localctx = LiteralContext(_ctx, getState())
		try enterRule(_localctx, 46, PlayScriptParser.RULE_literal)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(285)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .DECIMAL_LITERAL:fallthrough
		 	case .HEX_LITERAL:fallthrough
		 	case .OCT_LITERAL:fallthrough
		 	case .BINARY_LITERAL:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(279)
		 		try integerLiteral()

		 		break
		 	case .FLOAT_LITERAL:fallthrough
		 	case .HEX_FLOAT_LITERAL:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(280)
		 		try floatLiteral()

		 		break

		 	case .CHAR_LITERAL:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(281)
		 		try match(PlayScriptParser.Tokens.CHAR_LITERAL.rawValue)

		 		break

		 	case .STRING_LITERAL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(282)
		 		try match(PlayScriptParser.Tokens.STRING_LITERAL.rawValue)

		 		break

		 	case .BOOL_LITERAL:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(283)
		 		try match(PlayScriptParser.Tokens.BOOL_LITERAL.rawValue)

		 		break

		 	case .NULL_LITERAL:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(284)
		 		try match(PlayScriptParser.Tokens.NULL_LITERAL.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IntegerLiteralContext: ParserRuleContext {
			open
			func DECIMAL_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DECIMAL_LITERAL.rawValue, 0)
			}
			open
			func HEX_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.HEX_LITERAL.rawValue, 0)
			}
			open
			func OCT_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.OCT_LITERAL.rawValue, 0)
			}
			open
			func BINARY_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BINARY_LITERAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_integerLiteral
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterIntegerLiteral(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitIntegerLiteral(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitIntegerLiteral(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitIntegerLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func integerLiteral() throws -> IntegerLiteralContext {
		var _localctx: IntegerLiteralContext
		_localctx = IntegerLiteralContext(_ctx, getState())
		try enterRule(_localctx, 48, PlayScriptParser.RULE_integerLiteral)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(287)
		 	_la = try _input.LA(1)
		 	if (!(((Int64((_la - 103)) & ~0x3f) == 0 && ((Int64(1) << (_la - 103)) & 15) != 0))) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FloatLiteralContext: ParserRuleContext {
			open
			func FLOAT_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue, 0)
			}
			open
			func HEX_FLOAT_LITERAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_floatLiteral
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFloatLiteral(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFloatLiteral(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFloatLiteral(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFloatLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func floatLiteral() throws -> FloatLiteralContext {
		var _localctx: FloatLiteralContext
		_localctx = FloatLiteralContext(_ctx, getState())
		try enterRule(_localctx, 50, PlayScriptParser.RULE_floatLiteral)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(289)
		 	_la = try _input.LA(1)
		 	if (!(_la == PlayScriptParser.Tokens.FLOAT_LITERAL.rawValue || _la == PlayScriptParser.Tokens.HEX_FLOAT_LITERAL.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ProgContext: ParserRuleContext {
			open
			func blockStatements() -> BlockStatementsContext? {
				return getRuleContext(BlockStatementsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_prog
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterProg(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitProg(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitProg(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitProg(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func prog() throws -> ProgContext {
		var _localctx: ProgContext
		_localctx = ProgContext(_ctx, getState())
		try enterRule(_localctx, 52, PlayScriptParser.RULE_prog)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(291)
		 	try blockStatements()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockContext: ParserRuleContext {
			open
			func LBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func blockStatements() -> BlockStatementsContext? {
				return getRuleContext(BlockStatementsContext.self, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_block
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterBlock(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitBlock(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitBlock(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitBlock(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func block() throws -> BlockContext {
		var _localctx: BlockContext
		_localctx = BlockContext(_ctx, getState())
		try enterRule(_localctx, 54, PlayScriptParser.RULE_block)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(293)
		 	try match(PlayScriptParser.Tokens.LBRACE.rawValue)
		 	setState(294)
		 	try blockStatements()
		 	setState(295)
		 	try match(PlayScriptParser.Tokens.RBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockStatementsContext: ParserRuleContext {
			open
			func blockStatement() -> [BlockStatementContext] {
				return getRuleContexts(BlockStatementContext.self)
			}
			open
			func blockStatement(_ i: Int) -> BlockStatementContext? {
				return getRuleContext(BlockStatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_blockStatements
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterBlockStatements(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitBlockStatements(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitBlockStatements(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitBlockStatements(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func blockStatements() throws -> BlockStatementsContext {
		var _localctx: BlockStatementsContext
		_localctx = BlockStatementsContext(_ctx, getState())
		try enterRule(_localctx, 56, PlayScriptParser.RULE_blockStatements)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(300)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6922385561996761806) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 549655150607) != 0)) {
		 		setState(297)
		 		try blockStatement()


		 		setState(302)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockStatementContext: ParserRuleContext {
			open
			func variableDeclarators() -> VariableDeclaratorsContext? {
				return getRuleContext(VariableDeclaratorsContext.self, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func statement() -> StatementContext? {
				return getRuleContext(StatementContext.self, 0)
			}
			open
			func functionDeclaration() -> FunctionDeclarationContext? {
				return getRuleContext(FunctionDeclarationContext.self, 0)
			}
			open
			func classDeclaration() -> ClassDeclarationContext? {
				return getRuleContext(ClassDeclarationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_blockStatement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterBlockStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitBlockStatement(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitBlockStatement(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitBlockStatement(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func blockStatement() throws -> BlockStatementContext {
		var _localctx: BlockStatementContext
		_localctx = BlockStatementContext(_ctx, getState())
		try enterRule(_localctx, 58, PlayScriptParser.RULE_blockStatement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(309)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,31, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(303)
		 		try variableDeclarators()
		 		setState(304)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(306)
		 		try statement()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(307)
		 		try functionDeclaration()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(308)
		 		try classDeclaration()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatementContext: ParserRuleContext {
		open var blockLabel: BlockContext!
		open var statementExpression: ExpressionContext!
		open var identifierLabel: Token!
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func IF() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IF.rawValue, 0)
			}
			open
			func parExpression() -> ParExpressionContext? {
				return getRuleContext(ParExpressionContext.self, 0)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ELSE.rawValue, 0)
			}
			open
			func FOR() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FOR.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func forControl() -> ForControlContext? {
				return getRuleContext(ForControlContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func WHILE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.WHILE.rawValue, 0)
			}
			open
			func DO() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DO.rawValue, 0)
			}
			open
			func SEMI() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, 0)
			}
			open
			func SWITCH() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SWITCH.rawValue, 0)
			}
			open
			func LBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACE.rawValue, 0)
			}
			open
			func RBRACE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACE.rawValue, 0)
			}
			open
			func switchBlockStatementGroup() -> [SwitchBlockStatementGroupContext] {
				return getRuleContexts(SwitchBlockStatementGroupContext.self)
			}
			open
			func switchBlockStatementGroup(_ i: Int) -> SwitchBlockStatementGroupContext? {
				return getRuleContext(SwitchBlockStatementGroupContext.self, i)
			}
			open
			func switchLabel() -> [SwitchLabelContext] {
				return getRuleContexts(SwitchLabelContext.self)
			}
			open
			func switchLabel(_ i: Int) -> SwitchLabelContext? {
				return getRuleContext(SwitchLabelContext.self, i)
			}
			open
			func RETURN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RETURN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func BREAK() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BREAK.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func CONTINUE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CONTINUE.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitStatement(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitStatement(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitStatement(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func statement() throws -> StatementContext {
		var _localctx: StatementContext
		_localctx = StatementContext(_ctx, getState())
		try enterRule(_localctx, 60, PlayScriptParser.RULE_statement)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(374)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,38, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(311)
		 		try {
		 				let assignmentValue = try block()
		 				_localctx.castdown(StatementContext.self).blockLabel = assignmentValue
		 		     }()


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(312)
		 		try match(PlayScriptParser.Tokens.IF.rawValue)
		 		setState(313)
		 		try parExpression()
		 		setState(314)
		 		try statement()
		 		setState(317)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,32,_ctx)) {
		 		case 1:
		 			setState(315)
		 			try match(PlayScriptParser.Tokens.ELSE.rawValue)
		 			setState(316)
		 			try statement()

		 			break
		 		default: break
		 		}

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(319)
		 		try match(PlayScriptParser.Tokens.FOR.rawValue)
		 		setState(320)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(321)
		 		try forControl()
		 		setState(322)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)
		 		setState(323)
		 		try statement()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(325)
		 		try match(PlayScriptParser.Tokens.WHILE.rawValue)
		 		setState(326)
		 		try parExpression()
		 		setState(327)
		 		try statement()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(329)
		 		try match(PlayScriptParser.Tokens.DO.rawValue)
		 		setState(330)
		 		try statement()
		 		setState(331)
		 		try match(PlayScriptParser.Tokens.WHILE.rawValue)
		 		setState(332)
		 		try parExpression()
		 		setState(333)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(335)
		 		try match(PlayScriptParser.Tokens.SWITCH.rawValue)
		 		setState(336)
		 		try parExpression()
		 		setState(337)
		 		try match(PlayScriptParser.Tokens.LBRACE.rawValue)
		 		setState(341)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,33,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(338)
		 				try switchBlockStatementGroup()

		 		 
		 			}
		 			setState(343)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,33,_ctx)
		 		}
		 		setState(347)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (_la == PlayScriptParser.Tokens.CASE.rawValue || _la == PlayScriptParser.Tokens.DEFAULT.rawValue) {
		 			setState(344)
		 			try switchLabel()


		 			setState(349)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(350)
		 		try match(PlayScriptParser.Tokens.RBRACE.rawValue)

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(352)
		 		try match(PlayScriptParser.Tokens.RETURN.rawValue)
		 		setState(354)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6917599568183951360) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 137338290191) != 0)) {
		 			setState(353)
		 			try expression(0)

		 		}

		 		setState(356)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 8:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(357)
		 		try match(PlayScriptParser.Tokens.BREAK.rawValue)
		 		setState(359)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == PlayScriptParser.Tokens.IDENTIFIER.rawValue) {
		 			setState(358)
		 			try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

		 		}

		 		setState(361)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 9:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(362)
		 		try match(PlayScriptParser.Tokens.CONTINUE.rawValue)
		 		setState(364)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == PlayScriptParser.Tokens.IDENTIFIER.rawValue) {
		 			setState(363)
		 			try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

		 		}

		 		setState(366)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 10:
		 		try enterOuterAlt(_localctx, 10)
		 		setState(367)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 11:
		 		try enterOuterAlt(_localctx, 11)
		 		setState(368)
		 		try {
		 				let assignmentValue = try expression(0)
		 				_localctx.castdown(StatementContext.self).statementExpression = assignmentValue
		 		     }()

		 		setState(369)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)

		 		break
		 	case 12:
		 		try enterOuterAlt(_localctx, 12)
		 		setState(371)
		 		try {
		 				let assignmentValue = try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 				_localctx.castdown(StatementContext.self).identifierLabel = assignmentValue
		 		     }()

		 		setState(372)
		 		try match(PlayScriptParser.Tokens.COLON.rawValue)
		 		setState(373)
		 		try statement()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SwitchBlockStatementGroupContext: ParserRuleContext {
			open
			func switchLabel() -> [SwitchLabelContext] {
				return getRuleContexts(SwitchLabelContext.self)
			}
			open
			func switchLabel(_ i: Int) -> SwitchLabelContext? {
				return getRuleContext(SwitchLabelContext.self, i)
			}
			open
			func blockStatement() -> [BlockStatementContext] {
				return getRuleContexts(BlockStatementContext.self)
			}
			open
			func blockStatement(_ i: Int) -> BlockStatementContext? {
				return getRuleContext(BlockStatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_switchBlockStatementGroup
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterSwitchBlockStatementGroup(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitSwitchBlockStatementGroup(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitSwitchBlockStatementGroup(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitSwitchBlockStatementGroup(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func switchBlockStatementGroup() throws -> SwitchBlockStatementGroupContext {
		var _localctx: SwitchBlockStatementGroupContext
		_localctx = SwitchBlockStatementGroupContext(_ctx, getState())
		try enterRule(_localctx, 62, PlayScriptParser.RULE_switchBlockStatementGroup)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(377) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(376)
		 		try switchLabel()


		 		setState(379); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (_la == PlayScriptParser.Tokens.CASE.rawValue || _la == PlayScriptParser.Tokens.DEFAULT.rawValue)
		 	setState(382) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(381)
		 		try blockStatement()


		 		setState(384); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6922385561996761806) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 549655150607) != 0))

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SwitchLabelContext: ParserRuleContext {
		open var constantExpression: ExpressionContext!
		open var enumConstantName: Token!
			open
			func CASE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CASE.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COLON.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func DEFAULT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DEFAULT.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_switchLabel
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterSwitchLabel(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitSwitchLabel(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitSwitchLabel(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitSwitchLabel(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func switchLabel() throws -> SwitchLabelContext {
		var _localctx: SwitchLabelContext
		_localctx = SwitchLabelContext(_ctx, getState())
		try enterRule(_localctx, 64, PlayScriptParser.RULE_switchLabel)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(394)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CASE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(386)
		 		try match(PlayScriptParser.Tokens.CASE.rawValue)
		 		setState(389)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,41, _ctx)) {
		 		case 1:
		 			setState(387)
		 			try {
		 					let assignmentValue = try expression(0)
		 					_localctx.castdown(SwitchLabelContext.self).constantExpression = assignmentValue
		 			     }()


		 			break
		 		case 2:
		 			setState(388)
		 			try {
		 					let assignmentValue = try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 					_localctx.castdown(SwitchLabelContext.self).enumConstantName = assignmentValue
		 			     }()


		 			break
		 		default: break
		 		}
		 		setState(391)
		 		try match(PlayScriptParser.Tokens.COLON.rawValue)

		 		break

		 	case .DEFAULT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(392)
		 		try match(PlayScriptParser.Tokens.DEFAULT.rawValue)
		 		setState(393)
		 		try match(PlayScriptParser.Tokens.COLON.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ForControlContext: ParserRuleContext {
		open var forUpdate: ExpressionListContext!
			open
			func enhancedForControl() -> EnhancedForControlContext? {
				return getRuleContext(EnhancedForControlContext.self, 0)
			}
			open
			func SEMI() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.SEMI.rawValue)
			}
			open
			func SEMI(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SEMI.rawValue, i)
			}
			open
			func forInit() -> ForInitContext? {
				return getRuleContext(ForInitContext.self, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_forControl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterForControl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitForControl(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitForControl(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitForControl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func forControl() throws -> ForControlContext {
		var _localctx: ForControlContext
		_localctx = ForControlContext(_ctx, getState())
		try enterRule(_localctx, 66, PlayScriptParser.RULE_forControl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(408)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,46, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(396)
		 		try enhancedForControl()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(398)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6917599585447972938) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 549655150607) != 0)) {
		 			setState(397)
		 			try forInit()

		 		}

		 		setState(400)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)
		 		setState(402)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6917599568183951360) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 137338290191) != 0)) {
		 			setState(401)
		 			try expression(0)

		 		}

		 		setState(404)
		 		try match(PlayScriptParser.Tokens.SEMI.rawValue)
		 		setState(406)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6917599568183951360) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 137338290191) != 0)) {
		 			setState(405)
		 			try {
		 					let assignmentValue = try expressionList()
		 					_localctx.castdown(ForControlContext.self).forUpdate = assignmentValue
		 			     }()


		 		}


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ForInitContext: ParserRuleContext {
			open
			func variableDeclarators() -> VariableDeclaratorsContext? {
				return getRuleContext(VariableDeclaratorsContext.self, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_forInit
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterForInit(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitForInit(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitForInit(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitForInit(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func forInit() throws -> ForInitContext {
		var _localctx: ForInitContext
		_localctx = ForInitContext(_ctx, getState())
		try enterRule(_localctx, 68, PlayScriptParser.RULE_forInit)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(412)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,47, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(410)
		 		try variableDeclarators()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(411)
		 		try expressionList()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EnhancedForControlContext: ParserRuleContext {
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func variableDeclaratorId() -> VariableDeclaratorIdContext? {
				return getRuleContext(VariableDeclaratorIdContext.self, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COLON.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_enhancedForControl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterEnhancedForControl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitEnhancedForControl(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitEnhancedForControl(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitEnhancedForControl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func enhancedForControl() throws -> EnhancedForControlContext {
		var _localctx: EnhancedForControlContext
		_localctx = EnhancedForControlContext(_ctx, getState())
		try enterRule(_localctx, 70, PlayScriptParser.RULE_enhancedForControl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(414)
		 	try typeType()
		 	setState(415)
		 	try variableDeclaratorId()
		 	setState(416)
		 	try match(PlayScriptParser.Tokens.COLON.rawValue)
		 	setState(417)
		 	try expression(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ParExpressionContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_parExpression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterParExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitParExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitParExpression(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitParExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func parExpression() throws -> ParExpressionContext {
		var _localctx: ParExpressionContext
		_localctx = ParExpressionContext(_ctx, getState())
		try enterRule(_localctx, 72, PlayScriptParser.RULE_parExpression)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(419)
		 	try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 	setState(420)
		 	try expression(0)
		 	setState(421)
		 	try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpressionListContext: ParserRuleContext {
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_expressionList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterExpressionList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitExpressionList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitExpressionList(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitExpressionList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func expressionList() throws -> ExpressionListContext {
		var _localctx: ExpressionListContext
		_localctx = ExpressionListContext(_ctx, getState())
		try enterRule(_localctx, 74, PlayScriptParser.RULE_expressionList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(423)
		 	try expression(0)
		 	setState(428)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == PlayScriptParser.Tokens.COMMA.rawValue) {
		 		setState(424)
		 		try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 		setState(425)
		 		try expression(0)


		 		setState(430)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionCallContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
			open
			func THIS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.THIS.rawValue, 0)
			}
			open
			func SUPER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SUPER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_functionCall
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFunctionCall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFunctionCall(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFunctionCall(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFunctionCall(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionCall() throws -> FunctionCallContext {
		var _localctx: FunctionCallContext
		_localctx = FunctionCallContext(_ctx, getState())
		try enterRule(_localctx, 76, PlayScriptParser.RULE_functionCall)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(449)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(431)
		 		try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 		setState(432)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(434)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6917599568183951360) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 137338290191) != 0)) {
		 			setState(433)
		 			try expressionList()

		 		}

		 		setState(436)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		 		break

		 	case .THIS:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(437)
		 		try match(PlayScriptParser.Tokens.THIS.rawValue)
		 		setState(438)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(440)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6917599568183951360) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 137338290191) != 0)) {
		 			setState(439)
		 			try expressionList()

		 		}

		 		setState(442)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		 		break

		 	case .SUPER:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(443)
		 		try match(PlayScriptParser.Tokens.SUPER.rawValue)
		 		setState(444)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(446)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6917599568183951360) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 137338290191) != 0)) {
		 			setState(445)
		 			try expressionList()

		 		}

		 		setState(448)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class ExpressionContext: ParserRuleContext {
		open var `prefix`: Token!
		open var bop: Token!
		open var `postfix`: Token!
			open
			func primary() -> PrimaryContext? {
				return getRuleContext(PrimaryContext.self, 0)
			}
			open
			func functionCall() -> FunctionCallContext? {
				return getRuleContext(FunctionCallContext.self, 0)
			}
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func ADD() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ADD.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SUB.rawValue, 0)
			}
			open
			func INC() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.INC.rawValue, 0)
			}
			open
			func DEC() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DEC.rawValue, 0)
			}
			open
			func TILDE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.TILDE.rawValue, 0)
			}
			open
			func BANG() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BANG.rawValue, 0)
			}
			open
			func MUL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.MUL.rawValue, 0)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DIV.rawValue, 0)
			}
			open
			func MOD() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.MOD.rawValue, 0)
			}
			open
			func LT() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.LT.rawValue)
			}
			open
			func LT(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LT.rawValue, i)
			}
			open
			func GT() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.GT.rawValue)
			}
			open
			func GT(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.GT.rawValue, i)
			}
			open
			func LE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LE.rawValue, 0)
			}
			open
			func GE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.GE.rawValue, 0)
			}
			open
			func EQUAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.EQUAL.rawValue, 0)
			}
			open
			func NOTEQUAL() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.NOTEQUAL.rawValue, 0)
			}
			open
			func BITAND() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BITAND.rawValue, 0)
			}
			open
			func CARET() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CARET.rawValue, 0)
			}
			open
			func BITOR() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BITOR.rawValue, 0)
			}
			open
			func AND() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.AND.rawValue, 0)
			}
			open
			func OR() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.OR.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COLON.rawValue, 0)
			}
			open
			func QUESTION() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.QUESTION.rawValue, 0)
			}
			open
			func ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ASSIGN.rawValue, 0)
			}
			open
			func ADD_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.ADD_ASSIGN.rawValue, 0)
			}
			open
			func SUB_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SUB_ASSIGN.rawValue, 0)
			}
			open
			func MUL_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.MUL_ASSIGN.rawValue, 0)
			}
			open
			func DIV_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DIV_ASSIGN.rawValue, 0)
			}
			open
			func AND_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.AND_ASSIGN.rawValue, 0)
			}
			open
			func OR_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.OR_ASSIGN.rawValue, 0)
			}
			open
			func XOR_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.XOR_ASSIGN.rawValue, 0)
			}
			open
			func RSHIFT_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RSHIFT_ASSIGN.rawValue, 0)
			}
			open
			func URSHIFT_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.URSHIFT_ASSIGN.rawValue, 0)
			}
			open
			func LSHIFT_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LSHIFT_ASSIGN.rawValue, 0)
			}
			open
			func MOD_ASSIGN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.MOD_ASSIGN.rawValue, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOT.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func THIS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.THIS.rawValue, 0)
			}
			open
			func LBRACK() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACK.rawValue, 0)
			}
			open
			func RBRACK() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACK.rawValue, 0)
			}
			open
			func typeType() -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, 0)
			}
			open
			func INSTANCEOF() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.INSTANCEOF.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitExpression(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func expression( ) throws -> ExpressionContext   {
		return try expression(0)
	}
	@discardableResult
	private func expression(_ _p: Int) throws -> ExpressionContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: ExpressionContext
		_localctx = ExpressionContext(_ctx, _parentState)
		var _prevctx: ExpressionContext = _localctx
		let _startState: Int = 78
		try enterRecursionRule(_localctx, 78, PlayScriptParser.RULE_expression, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(458)
			try _errHandler.sync(self)
			switch(try getInterpreter().adaptivePredict(_input,53, _ctx)) {
			case 1:
				setState(452)
				try primary()

				break
			case 2:
				setState(453)
				try functionCall()

				break
			case 3:
				setState(454)
				_localctx.castdown(ExpressionContext.self).`prefix` = try _input.LT(1)
				_la = try _input.LA(1)
				if (!(((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 15) != 0))) {
					_localctx.castdown(ExpressionContext.self).`prefix` = try _errHandler.recoverInline(self) as Token
				}
				else {
					_errHandler.reportMatch(self)
					try consume()
				}
				setState(455)
				try expression(15)

				break
			case 4:
				setState(456)
				_localctx.castdown(ExpressionContext.self).`prefix` = try _input.LT(1)
				_la = try _input.LA(1)
				if (!(_la == PlayScriptParser.Tokens.BANG.rawValue || _la == PlayScriptParser.Tokens.TILDE.rawValue)) {
					_localctx.castdown(ExpressionContext.self).`prefix` = try _errHandler.recoverInline(self) as Token
				}
				else {
					_errHandler.reportMatch(self)
					try consume()
				}
				setState(457)
				try expression(14)

				break
			default: break
			}
			_ctx!.stop = try _input.LT(-1)
			setState(526)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,57,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(524)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,56, _ctx)) {
					case 1:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(460)
						if (!(precpred(_ctx, 13))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 13)"))
						}
						setState(461)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(((Int64((_la - 76)) & ~0x3f) == 0 && ((Int64(1) << (_la - 76)) & 35) != 0))) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(462)
						try expression(14)

						break
					case 2:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(463)
						if (!(precpred(_ctx, 12))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 12)"))
						}
						setState(464)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(_la == PlayScriptParser.Tokens.ADD.rawValue || _la == PlayScriptParser.Tokens.SUB.rawValue)) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(465)
						try expression(13)

						break
					case 3:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(466)
						if (!(precpred(_ctx, 11))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 11)"))
						}
						setState(474)
						try _errHandler.sync(self)
						switch(try getInterpreter().adaptivePredict(_input,54, _ctx)) {
						case 1:
							setState(467)
							try match(PlayScriptParser.Tokens.LT.rawValue)
							setState(468)
							try match(PlayScriptParser.Tokens.LT.rawValue)

							break
						case 2:
							setState(469)
							try match(PlayScriptParser.Tokens.GT.rawValue)
							setState(470)
							try match(PlayScriptParser.Tokens.GT.rawValue)
							setState(471)
							try match(PlayScriptParser.Tokens.GT.rawValue)

							break
						case 3:
							setState(472)
							try match(PlayScriptParser.Tokens.GT.rawValue)
							setState(473)
							try match(PlayScriptParser.Tokens.GT.rawValue)

							break
						default: break
						}
						setState(476)
						try expression(12)

						break
					case 4:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(477)
						if (!(precpred(_ctx, 10))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 10)"))
						}
						setState(478)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(((Int64((_la - 59)) & ~0x3f) == 0 && ((Int64(1) << (_la - 59)) & 771) != 0))) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(479)
						try expression(11)

						break
					case 5:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(480)
						if (!(precpred(_ctx, 8))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 8)"))
						}
						setState(481)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(_la == PlayScriptParser.Tokens.EQUAL.rawValue || _la == PlayScriptParser.Tokens.NOTEQUAL.rawValue)) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(482)
						try expression(9)

						break
					case 6:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(483)
						if (!(precpred(_ctx, 7))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 7)"))
						}
						setState(484)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.BITAND.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(485)
						try expression(8)

						break
					case 7:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(486)
						if (!(precpred(_ctx, 6))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 6)"))
						}
						setState(487)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.CARET.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(488)
						try expression(7)

						break
					case 8:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(489)
						if (!(precpred(_ctx, 5))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 5)"))
						}
						setState(490)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.BITOR.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(491)
						try expression(6)

						break
					case 9:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(492)
						if (!(precpred(_ctx, 4))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 4)"))
						}
						setState(493)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.AND.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(494)
						try expression(5)

						break
					case 10:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(495)
						if (!(precpred(_ctx, 3))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 3)"))
						}
						setState(496)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.OR.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(497)
						try expression(4)

						break
					case 11:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(498)
						if (!(precpred(_ctx, 2))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
						}
						setState(499)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.QUESTION.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(500)
						try expression(0)
						setState(501)
						try match(PlayScriptParser.Tokens.COLON.rawValue)
						setState(502)
						try expression(3)

						break
					case 12:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(504)
						if (!(precpred(_ctx, 1))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
						}
						setState(505)
						_localctx.castdown(ExpressionContext.self).bop = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(((Int64((_la - 58)) & ~0x3f) == 0 && ((Int64(1) << (_la - 58)) & 34342961153) != 0))) {
							_localctx.castdown(ExpressionContext.self).bop = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(506)
						try expression(1)

						break
					case 13:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(507)
						if (!(precpred(_ctx, 19))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 19)"))
						}
						setState(508)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.DOT.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(512)
						try _errHandler.sync(self)
						switch(try getInterpreter().adaptivePredict(_input,55, _ctx)) {
						case 1:
							setState(509)
							try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

							break
						case 2:
							setState(510)
							try functionCall()

							break
						case 3:
							setState(511)
							try match(PlayScriptParser.Tokens.THIS.rawValue)

							break
						default: break
						}

						break
					case 14:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(514)
						if (!(precpred(_ctx, 18))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 18)"))
						}
						setState(515)
						try match(PlayScriptParser.Tokens.LBRACK.rawValue)
						setState(516)
						try expression(0)
						setState(517)
						try match(PlayScriptParser.Tokens.RBRACK.rawValue)

						break
					case 15:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(519)
						if (!(precpred(_ctx, 16))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 16)"))
						}
						setState(520)
						_localctx.castdown(ExpressionContext.self).`postfix` = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(_la == PlayScriptParser.Tokens.INC.rawValue || _la == PlayScriptParser.Tokens.DEC.rawValue)) {
							_localctx.castdown(ExpressionContext.self).`postfix` = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}

						break
					case 16:
						_localctx = ExpressionContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, PlayScriptParser.RULE_expression)
						setState(521)
						if (!(precpred(_ctx, 9))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 9)"))
						}
						setState(522)
						try {
								let assignmentValue = try match(PlayScriptParser.Tokens.INSTANCEOF.rawValue)
								_localctx.castdown(ExpressionContext.self).bop = assignmentValue
						     }()

						setState(523)
						try typeType()

						break
					default: break
					}
			 
				}
				setState(528)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,57,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class PrimaryContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func THIS() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.THIS.rawValue, 0)
			}
			open
			func SUPER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SUPER.rawValue, 0)
			}
			open
			func literal() -> LiteralContext? {
				return getRuleContext(LiteralContext.self, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_primary
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterPrimary(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitPrimary(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitPrimary(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitPrimary(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func primary() throws -> PrimaryContext {
		var _localctx: PrimaryContext
		_localctx = PrimaryContext(_ctx, getState())
		try enterRule(_localctx, 80, PlayScriptParser.RULE_primary)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(537)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LPAREN:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(529)
		 		try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 		setState(530)
		 		try expression(0)
		 		setState(531)
		 		try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		 		break

		 	case .THIS:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(533)
		 		try match(PlayScriptParser.Tokens.THIS.rawValue)

		 		break

		 	case .SUPER:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(534)
		 		try match(PlayScriptParser.Tokens.SUPER.rawValue)

		 		break
		 	case .CHAR_LITERAL:fallthrough
		 	case .STRING_LITERAL:fallthrough
		 	case .BOOL_LITERAL:fallthrough
		 	case .NULL_LITERAL:fallthrough
		 	case .DECIMAL_LITERAL:fallthrough
		 	case .HEX_LITERAL:fallthrough
		 	case .OCT_LITERAL:fallthrough
		 	case .BINARY_LITERAL:fallthrough
		 	case .FLOAT_LITERAL:fallthrough
		 	case .HEX_FLOAT_LITERAL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(535)
		 		try literal()

		 		break

		 	case .IDENTIFIER:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(536)
		 		try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeListContext: ParserRuleContext {
			open
			func typeType() -> [TypeTypeContext] {
				return getRuleContexts(TypeTypeContext.self)
			}
			open
			func typeType(_ i: Int) -> TypeTypeContext? {
				return getRuleContext(TypeTypeContext.self, i)
			}
			open
			func COMMA() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.COMMA.rawValue)
			}
			open
			func COMMA(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.COMMA.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_typeList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterTypeList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitTypeList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitTypeList(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitTypeList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeList() throws -> TypeListContext {
		var _localctx: TypeListContext
		_localctx = TypeListContext(_ctx, getState())
		try enterRule(_localctx, 82, PlayScriptParser.RULE_typeList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(539)
		 	try typeType()
		 	setState(544)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == PlayScriptParser.Tokens.COMMA.rawValue) {
		 		setState(540)
		 		try match(PlayScriptParser.Tokens.COMMA.rawValue)
		 		setState(541)
		 		try typeType()


		 		setState(546)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeTypeContext: ParserRuleContext {
			open
			func classOrInterfaceType() -> ClassOrInterfaceTypeContext? {
				return getRuleContext(ClassOrInterfaceTypeContext.self, 0)
			}
			open
			func functionType() -> FunctionTypeContext? {
				return getRuleContext(FunctionTypeContext.self, 0)
			}
			open
			func primitiveType() -> PrimitiveTypeContext? {
				return getRuleContext(PrimitiveTypeContext.self, 0)
			}
			open
			func LBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.LBRACK.rawValue)
			}
			open
			func LBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LBRACK.rawValue, i)
			}
			open
			func RBRACK() -> [TerminalNode] {
				return getTokens(PlayScriptParser.Tokens.RBRACK.rawValue)
			}
			open
			func RBRACK(_ i:Int) -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RBRACK.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_typeType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterTypeType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitTypeType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitTypeType(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitTypeType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func typeType() throws -> TypeTypeContext {
		var _localctx: TypeTypeContext
		_localctx = TypeTypeContext(_ctx, getState())
		try enterRule(_localctx, 84, PlayScriptParser.RULE_typeType)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(550)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .IDENTIFIER:
		 		setState(547)
		 		try classOrInterfaceType()

		 		break

		 	case .FUNCTION:
		 		setState(548)
		 		try functionType()

		 		break
		 	case .BOOLEAN:fallthrough
		 	case .BYTE:fallthrough
		 	case .CHAR:fallthrough
		 	case .DOUBLE:fallthrough
		 	case .FLOAT:fallthrough
		 	case .INT:fallthrough
		 	case .LONG:fallthrough
		 	case .SHORT:fallthrough
		 	case .STRING:
		 		setState(549)
		 		try primitiveType()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(556)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,61,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(552)
		 			try match(PlayScriptParser.Tokens.LBRACK.rawValue)
		 			setState(553)
		 			try match(PlayScriptParser.Tokens.RBRACK.rawValue)

		 	 
		 		}
		 		setState(558)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,61,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionTypeContext: ParserRuleContext {
			open
			func FUNCTION() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FUNCTION.rawValue, 0)
			}
			open
			func typeTypeOrVoid() -> TypeTypeOrVoidContext? {
				return getRuleContext(TypeTypeOrVoidContext.self, 0)
			}
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func typeList() -> TypeListContext? {
				return getRuleContext(TypeListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_functionType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterFunctionType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitFunctionType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitFunctionType(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitFunctionType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionType() throws -> FunctionTypeContext {
		var _localctx: FunctionTypeContext
		_localctx = FunctionTypeContext(_ctx, getState())
		try enterRule(_localctx, 86, PlayScriptParser.RULE_functionType)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(559)
		 	try match(PlayScriptParser.Tokens.FUNCTION.rawValue)
		 	setState(560)
		 	try typeTypeOrVoid()
		 	setState(561)
		 	try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 	setState(563)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 17264021578) != 0) || ((Int64((_la - 97)) & ~0x3f) == 0 && ((Int64(1) << (_la - 97)) & 12289) != 0)) {
		 		setState(562)
		 		try typeList()

		 	}

		 	setState(565)
		 	try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PrimitiveTypeContext: ParserRuleContext {
			open
			func BOOLEAN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BOOLEAN.rawValue, 0)
			}
			open
			func CHAR() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.CHAR.rawValue, 0)
			}
			open
			func BYTE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.BYTE.rawValue, 0)
			}
			open
			func SHORT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.SHORT.rawValue, 0)
			}
			open
			func INT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.INT.rawValue, 0)
			}
			open
			func LONG() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LONG.rawValue, 0)
			}
			open
			func FLOAT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.FLOAT.rawValue, 0)
			}
			open
			func DOUBLE() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOUBLE.rawValue, 0)
			}
			open
			func STRING() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.STRING.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_primitiveType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterPrimitiveType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitPrimitiveType(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitPrimitiveType(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitPrimitiveType(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func primitiveType() throws -> PrimitiveTypeContext {
		var _localctx: PrimitiveTypeContext
		_localctx = PrimitiveTypeContext(_ctx, getState())
		try enterRule(_localctx, 88, PlayScriptParser.RULE_primitiveType)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(567)
		 	_la = try _input.LA(1)
		 	if (!(((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 17264021578) != 0) || _la == PlayScriptParser.Tokens.STRING.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CreatorContext: ParserRuleContext {
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
			open
			func arguments() -> ArgumentsContext? {
				return getRuleContext(ArgumentsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_creator
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterCreator(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitCreator(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitCreator(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitCreator(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func creator() throws -> CreatorContext {
		var _localctx: CreatorContext
		_localctx = CreatorContext(_ctx, getState())
		try enterRule(_localctx, 90, PlayScriptParser.RULE_creator)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(569)
		 	try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 	setState(570)
		 	try arguments()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SuperSuffixContext: ParserRuleContext {
			open
			func arguments() -> ArgumentsContext? {
				return getRuleContext(ArgumentsContext.self, 0)
			}
			open
			func DOT() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.DOT.rawValue, 0)
			}
			open
			func IDENTIFIER() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_superSuffix
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterSuperSuffix(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitSuperSuffix(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitSuperSuffix(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitSuperSuffix(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func superSuffix() throws -> SuperSuffixContext {
		var _localctx: SuperSuffixContext
		_localctx = SuperSuffixContext(_ctx, getState())
		try enterRule(_localctx, 92, PlayScriptParser.RULE_superSuffix)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(578)
		 	try _errHandler.sync(self)
		 	switch (PlayScriptParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LPAREN:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(572)
		 		try arguments()

		 		break

		 	case .DOT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(573)
		 		try match(PlayScriptParser.Tokens.DOT.rawValue)
		 		setState(574)
		 		try match(PlayScriptParser.Tokens.IDENTIFIER.rawValue)
		 		setState(576)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == PlayScriptParser.Tokens.LPAREN.rawValue) {
		 			setState(575)
		 			try arguments()

		 		}


		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgumentsContext: ParserRuleContext {
			open
			func LPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.LPAREN.rawValue, 0)
			}
			open
			func RPAREN() -> TerminalNode? {
				return getToken(PlayScriptParser.Tokens.RPAREN.rawValue, 0)
			}
			open
			func expressionList() -> ExpressionListContext? {
				return getRuleContext(ExpressionListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return PlayScriptParser.RULE_arguments
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.enterArguments(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? PlayScriptListener {
				listener.exitArguments(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? PlayScriptVisitor {
			    return visitor.visitArguments(self)
			}
			else if let visitor = visitor as? PlayScriptBaseVisitor {
			    return visitor.visitArguments(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func arguments() throws -> ArgumentsContext {
		var _localctx: ArgumentsContext
		_localctx = ArgumentsContext(_ctx, getState())
		try enterRule(_localctx, 94, PlayScriptParser.RULE_arguments)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(580)
		 	try match(PlayScriptParser.Tokens.LPAREN.rawValue)
		 	setState(582)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 6917599568183951360) != 0) || ((Int64((_la - 72)) & ~0x3f) == 0 && ((Int64(1) << (_la - 72)) & 137338290191) != 0)) {
		 		setState(581)
		 		try expressionList()

		 	}

		 	setState(584)
		 	try match(PlayScriptParser.Tokens.RPAREN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  39:
			return try expression_sempred(_localctx?.castdown(ExpressionContext.self), predIndex)
	    default: return true
		}
	}
	private func expression_sempred(_ _localctx: ExpressionContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 13)
		    case 1:return precpred(_ctx, 12)
		    case 2:return precpred(_ctx, 11)
		    case 3:return precpred(_ctx, 10)
		    case 4:return precpred(_ctx, 8)
		    case 5:return precpred(_ctx, 7)
		    case 6:return precpred(_ctx, 6)
		    case 7:return precpred(_ctx, 5)
		    case 8:return precpred(_ctx, 4)
		    case 9:return precpred(_ctx, 3)
		    case 10:return precpred(_ctx, 2)
		    case 11:return precpred(_ctx, 1)
		    case 12:return precpred(_ctx, 19)
		    case 13:return precpred(_ctx, 18)
		    case 14:return precpred(_ctx, 16)
		    case 15:return precpred(_ctx, 9)
		    default: return true
		}
	}

	static let _serializedATN:[Int] = [
		4,1,110,587,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,
		7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,14,
		2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,7,21,
		2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,7,28,
		2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,2,35,7,35,
		2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,41,7,41,2,42,7,42,
		2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,47,1,0,1,0,1,0,1,0,3,0,
		101,8,0,1,0,1,0,3,0,105,8,0,1,0,1,0,1,1,1,1,5,1,111,8,1,10,1,12,1,114,
		9,1,1,1,1,1,1,2,1,2,3,2,120,8,2,1,3,1,3,1,3,3,3,125,8,3,1,4,3,4,128,8,
		4,1,4,1,4,1,4,1,4,5,4,134,8,4,10,4,12,4,137,9,4,1,4,1,4,3,4,141,8,4,1,
		4,1,4,1,5,1,5,3,5,147,8,5,1,6,1,6,3,6,151,8,6,1,7,1,7,1,7,5,7,156,8,7,
		10,7,12,7,159,9,7,1,8,1,8,3,8,163,8,8,1,8,1,8,1,9,1,9,1,9,5,9,170,8,9,
		10,9,12,9,173,9,9,1,9,1,9,3,9,177,8,9,1,9,3,9,180,8,9,1,10,5,10,183,8,
		10,10,10,12,10,186,9,10,1,10,1,10,1,10,1,11,5,11,192,8,11,10,11,12,11,
		195,9,11,1,11,1,11,1,11,1,11,1,12,1,12,1,13,1,13,1,13,5,13,206,8,13,10,
		13,12,13,209,9,13,1,14,1,14,1,14,1,15,1,15,1,15,1,15,3,15,218,8,15,1,15,
		1,15,1,16,1,16,1,16,1,16,5,16,226,8,16,10,16,12,16,229,9,16,1,17,1,17,
		1,17,3,17,234,8,17,1,18,1,18,1,18,5,18,239,8,18,10,18,12,18,242,9,18,1,
		19,1,19,3,19,246,8,19,1,20,1,20,1,20,1,20,5,20,252,8,20,10,20,12,20,255,
		9,20,1,20,3,20,258,8,20,3,20,260,8,20,1,20,1,20,1,21,1,21,1,21,5,21,267,
		8,21,10,21,12,21,270,9,21,1,22,1,22,1,22,1,22,3,22,276,8,22,3,22,278,8,
		22,1,23,1,23,1,23,1,23,1,23,1,23,3,23,286,8,23,1,24,1,24,1,25,1,25,1,26,
		1,26,1,27,1,27,1,27,1,27,1,28,5,28,299,8,28,10,28,12,28,302,9,28,1,29,
		1,29,1,29,1,29,1,29,1,29,3,29,310,8,29,1,30,1,30,1,30,1,30,1,30,1,30,3,
		30,318,8,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,
		1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,5,30,340,8,30,10,30,12,30,343,
		9,30,1,30,5,30,346,8,30,10,30,12,30,349,9,30,1,30,1,30,1,30,1,30,3,30,
		355,8,30,1,30,1,30,1,30,3,30,360,8,30,1,30,1,30,1,30,3,30,365,8,30,1,30,
		1,30,1,30,1,30,1,30,1,30,1,30,1,30,3,30,375,8,30,1,31,4,31,378,8,31,11,
		31,12,31,379,1,31,4,31,383,8,31,11,31,12,31,384,1,32,1,32,1,32,3,32,390,
		8,32,1,32,1,32,1,32,3,32,395,8,32,1,33,1,33,3,33,399,8,33,1,33,1,33,3,
		33,403,8,33,1,33,1,33,3,33,407,8,33,3,33,409,8,33,1,34,1,34,3,34,413,8,
		34,1,35,1,35,1,35,1,35,1,35,1,36,1,36,1,36,1,36,1,37,1,37,1,37,5,37,427,
		8,37,10,37,12,37,430,9,37,1,38,1,38,1,38,3,38,435,8,38,1,38,1,38,1,38,
		1,38,3,38,441,8,38,1,38,1,38,1,38,1,38,3,38,447,8,38,1,38,3,38,450,8,38,
		1,39,1,39,1,39,1,39,1,39,1,39,1,39,3,39,459,8,39,1,39,1,39,1,39,1,39,1,
		39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,3,39,475,8,39,1,39,1,39,
		1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,
		1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,1,39,
		1,39,1,39,1,39,1,39,1,39,1,39,3,39,513,8,39,1,39,1,39,1,39,1,39,1,39,1,
		39,1,39,1,39,1,39,1,39,5,39,525,8,39,10,39,12,39,528,9,39,1,40,1,40,1,
		40,1,40,1,40,1,40,1,40,1,40,3,40,538,8,40,1,41,1,41,1,41,5,41,543,8,41,
		10,41,12,41,546,9,41,1,42,1,42,1,42,3,42,551,8,42,1,42,1,42,5,42,555,8,
		42,10,42,12,42,558,9,42,1,43,1,43,1,43,1,43,3,43,564,8,43,1,43,1,43,1,
		44,1,44,1,45,1,45,1,45,1,46,1,46,1,46,1,46,3,46,577,8,46,3,46,579,8,46,
		1,47,1,47,3,47,583,8,47,1,47,1,47,1,47,0,1,78,48,0,2,4,6,8,10,12,14,16,
		18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,
		66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,0,12,2,0,15,15,35,35,1,0,
		103,106,1,0,107,108,1,0,72,75,1,0,61,62,2,0,76,77,81,81,1,0,74,75,2,0,
		59,60,67,68,2,0,66,66,69,69,2,0,58,58,82,92,1,0,72,73,9,0,1,1,3,3,6,6,
		12,12,18,18,24,24,26,26,34,34,110,110,644,0,96,1,0,0,0,2,108,1,0,0,0,4,
		119,1,0,0,0,6,124,1,0,0,0,8,127,1,0,0,0,10,146,1,0,0,0,12,150,1,0,0,0,
		14,152,1,0,0,0,16,160,1,0,0,0,18,179,1,0,0,0,20,184,1,0,0,0,22,193,1,0,
		0,0,24,200,1,0,0,0,26,202,1,0,0,0,28,210,1,0,0,0,30,213,1,0,0,0,32,221,
		1,0,0,0,34,230,1,0,0,0,36,235,1,0,0,0,38,245,1,0,0,0,40,247,1,0,0,0,42,
		263,1,0,0,0,44,277,1,0,0,0,46,285,1,0,0,0,48,287,1,0,0,0,50,289,1,0,0,
		0,52,291,1,0,0,0,54,293,1,0,0,0,56,300,1,0,0,0,58,309,1,0,0,0,60,374,1,
		0,0,0,62,377,1,0,0,0,64,394,1,0,0,0,66,408,1,0,0,0,68,412,1,0,0,0,70,414,
		1,0,0,0,72,419,1,0,0,0,74,423,1,0,0,0,76,449,1,0,0,0,78,458,1,0,0,0,80,
		537,1,0,0,0,82,539,1,0,0,0,84,550,1,0,0,0,86,559,1,0,0,0,88,567,1,0,0,
		0,90,569,1,0,0,0,92,578,1,0,0,0,94,580,1,0,0,0,96,97,5,7,0,0,97,100,5,
		97,0,0,98,99,5,15,0,0,99,101,3,84,42,0,100,98,1,0,0,0,100,101,1,0,0,0,
		101,104,1,0,0,0,102,103,5,21,0,0,103,105,3,82,41,0,104,102,1,0,0,0,104,
		105,1,0,0,0,105,106,1,0,0,0,106,107,3,2,1,0,107,1,1,0,0,0,108,112,5,48,
		0,0,109,111,3,4,2,0,110,109,1,0,0,0,111,114,1,0,0,0,112,110,1,0,0,0,112,
		113,1,0,0,0,113,115,1,0,0,0,114,112,1,0,0,0,115,116,5,49,0,0,116,3,1,0,
		0,0,117,120,5,52,0,0,118,120,3,6,3,0,119,117,1,0,0,0,119,118,1,0,0,0,120,
		5,1,0,0,0,121,125,3,8,4,0,122,125,3,28,14,0,123,125,3,0,0,0,124,121,1,
		0,0,0,124,122,1,0,0,0,124,123,1,0,0,0,125,7,1,0,0,0,126,128,3,12,6,0,127,
		126,1,0,0,0,127,128,1,0,0,0,128,129,1,0,0,0,129,130,5,97,0,0,130,135,3,
		16,8,0,131,132,5,50,0,0,132,134,5,51,0,0,133,131,1,0,0,0,134,137,1,0,0,
		0,135,133,1,0,0,0,135,136,1,0,0,0,136,140,1,0,0,0,137,135,1,0,0,0,138,
		139,5,98,0,0,139,141,3,14,7,0,140,138,1,0,0,0,140,141,1,0,0,0,141,142,
		1,0,0,0,142,143,3,10,5,0,143,9,1,0,0,0,144,147,3,54,27,0,145,147,5,52,
		0,0,146,144,1,0,0,0,146,145,1,0,0,0,147,11,1,0,0,0,148,151,3,84,42,0,149,
		151,5,38,0,0,150,148,1,0,0,0,150,149,1,0,0,0,151,13,1,0,0,0,152,157,3,
		26,13,0,153,154,5,53,0,0,154,156,3,26,13,0,155,153,1,0,0,0,156,159,1,0,
		0,0,157,155,1,0,0,0,157,158,1,0,0,0,158,15,1,0,0,0,159,157,1,0,0,0,160,
		162,5,46,0,0,161,163,3,18,9,0,162,161,1,0,0,0,162,163,1,0,0,0,163,164,
		1,0,0,0,164,165,5,47,0,0,165,17,1,0,0,0,166,171,3,20,10,0,167,168,5,53,
		0,0,168,170,3,20,10,0,169,167,1,0,0,0,170,173,1,0,0,0,171,169,1,0,0,0,
		171,172,1,0,0,0,172,176,1,0,0,0,173,171,1,0,0,0,174,175,5,53,0,0,175,177,
		3,22,11,0,176,174,1,0,0,0,176,177,1,0,0,0,177,180,1,0,0,0,178,180,3,22,
		11,0,179,166,1,0,0,0,179,178,1,0,0,0,180,19,1,0,0,0,181,183,3,24,12,0,
		182,181,1,0,0,0,183,186,1,0,0,0,184,182,1,0,0,0,184,185,1,0,0,0,185,187,
		1,0,0,0,186,184,1,0,0,0,187,188,3,84,42,0,188,189,3,36,18,0,189,21,1,0,
		0,0,190,192,3,24,12,0,191,190,1,0,0,0,192,195,1,0,0,0,193,191,1,0,0,0,
		193,194,1,0,0,0,194,196,1,0,0,0,195,193,1,0,0,0,196,197,3,84,42,0,197,
		198,5,55,0,0,198,199,3,36,18,0,199,23,1,0,0,0,200,201,5,16,0,0,201,25,
		1,0,0,0,202,207,5,97,0,0,203,204,5,54,0,0,204,206,5,97,0,0,205,203,1,0,
		0,0,206,209,1,0,0,0,207,205,1,0,0,0,207,208,1,0,0,0,208,27,1,0,0,0,209,
		207,1,0,0,0,210,211,3,32,16,0,211,212,5,52,0,0,212,29,1,0,0,0,213,214,
		5,97,0,0,214,217,3,16,8,0,215,216,5,98,0,0,216,218,3,14,7,0,217,215,1,
		0,0,0,217,218,1,0,0,0,218,219,1,0,0,0,219,220,3,54,27,0,220,31,1,0,0,0,
		221,222,3,84,42,0,222,227,3,34,17,0,223,224,5,53,0,0,224,226,3,34,17,0,
		225,223,1,0,0,0,226,229,1,0,0,0,227,225,1,0,0,0,227,228,1,0,0,0,228,33,
		1,0,0,0,229,227,1,0,0,0,230,233,3,36,18,0,231,232,5,58,0,0,232,234,3,38,
		19,0,233,231,1,0,0,0,233,234,1,0,0,0,234,35,1,0,0,0,235,240,5,97,0,0,236,
		237,5,50,0,0,237,239,5,51,0,0,238,236,1,0,0,0,239,242,1,0,0,0,240,238,
		1,0,0,0,240,241,1,0,0,0,241,37,1,0,0,0,242,240,1,0,0,0,243,246,3,40,20,
		0,244,246,3,78,39,0,245,243,1,0,0,0,245,244,1,0,0,0,246,39,1,0,0,0,247,
		259,5,48,0,0,248,253,3,38,19,0,249,250,5,53,0,0,250,252,3,38,19,0,251,
		249,1,0,0,0,252,255,1,0,0,0,253,251,1,0,0,0,253,254,1,0,0,0,254,257,1,
		0,0,0,255,253,1,0,0,0,256,258,5,53,0,0,257,256,1,0,0,0,257,258,1,0,0,0,
		258,260,1,0,0,0,259,248,1,0,0,0,259,260,1,0,0,0,260,261,1,0,0,0,261,262,
		5,49,0,0,262,41,1,0,0,0,263,268,5,97,0,0,264,265,5,54,0,0,265,267,5,97,
		0,0,266,264,1,0,0,0,267,270,1,0,0,0,268,266,1,0,0,0,268,269,1,0,0,0,269,
		43,1,0,0,0,270,268,1,0,0,0,271,278,3,84,42,0,272,275,5,63,0,0,273,274,
		7,0,0,0,274,276,3,84,42,0,275,273,1,0,0,0,275,276,1,0,0,0,276,278,1,0,
		0,0,277,271,1,0,0,0,277,272,1,0,0,0,278,45,1,0,0,0,279,286,3,48,24,0,280,
		286,3,50,25,0,281,286,5,99,0,0,282,286,5,100,0,0,283,286,5,101,0,0,284,
		286,5,102,0,0,285,279,1,0,0,0,285,280,1,0,0,0,285,281,1,0,0,0,285,282,
		1,0,0,0,285,283,1,0,0,0,285,284,1,0,0,0,286,47,1,0,0,0,287,288,7,1,0,0,
		288,49,1,0,0,0,289,290,7,2,0,0,290,51,1,0,0,0,291,292,3,56,28,0,292,53,
		1,0,0,0,293,294,5,48,0,0,294,295,3,56,28,0,295,296,5,49,0,0,296,55,1,0,
		0,0,297,299,3,58,29,0,298,297,1,0,0,0,299,302,1,0,0,0,300,298,1,0,0,0,
		300,301,1,0,0,0,301,57,1,0,0,0,302,300,1,0,0,0,303,304,3,32,16,0,304,305,
		5,52,0,0,305,310,1,0,0,0,306,310,3,60,30,0,307,310,3,8,4,0,308,310,3,0,
		0,0,309,303,1,0,0,0,309,306,1,0,0,0,309,307,1,0,0,0,309,308,1,0,0,0,310,
		59,1,0,0,0,311,375,3,54,27,0,312,313,5,20,0,0,313,314,3,72,36,0,314,317,
		3,60,30,0,315,316,5,13,0,0,316,318,3,60,30,0,317,315,1,0,0,0,317,318,1,
		0,0,0,318,375,1,0,0,0,319,320,5,19,0,0,320,321,5,46,0,0,321,322,3,66,33,
		0,322,323,5,47,0,0,323,324,3,60,30,0,324,375,1,0,0,0,325,326,5,39,0,0,
		326,327,3,72,36,0,327,328,3,60,30,0,328,375,1,0,0,0,329,330,5,11,0,0,330,
		331,3,60,30,0,331,332,5,39,0,0,332,333,3,72,36,0,333,334,5,52,0,0,334,
		375,1,0,0,0,335,336,5,36,0,0,336,337,3,72,36,0,337,341,5,48,0,0,338,340,
		3,62,31,0,339,338,1,0,0,0,340,343,1,0,0,0,341,339,1,0,0,0,341,342,1,0,
		0,0,342,347,1,0,0,0,343,341,1,0,0,0,344,346,3,64,32,0,345,344,1,0,0,0,
		346,349,1,0,0,0,347,345,1,0,0,0,347,348,1,0,0,0,348,350,1,0,0,0,349,347,
		1,0,0,0,350,351,5,49,0,0,351,375,1,0,0,0,352,354,5,33,0,0,353,355,3,78,
		39,0,354,353,1,0,0,0,354,355,1,0,0,0,355,356,1,0,0,0,356,375,5,52,0,0,
		357,359,5,2,0,0,358,360,5,97,0,0,359,358,1,0,0,0,359,360,1,0,0,0,360,361,
		1,0,0,0,361,375,5,52,0,0,362,364,5,9,0,0,363,365,5,97,0,0,364,363,1,0,
		0,0,364,365,1,0,0,0,365,366,1,0,0,0,366,375,5,52,0,0,367,375,5,52,0,0,
		368,369,3,78,39,0,369,370,5,52,0,0,370,375,1,0,0,0,371,372,5,97,0,0,372,
		373,5,64,0,0,373,375,3,60,30,0,374,311,1,0,0,0,374,312,1,0,0,0,374,319,
		1,0,0,0,374,325,1,0,0,0,374,329,1,0,0,0,374,335,1,0,0,0,374,352,1,0,0,
		0,374,357,1,0,0,0,374,362,1,0,0,0,374,367,1,0,0,0,374,368,1,0,0,0,374,
		371,1,0,0,0,375,61,1,0,0,0,376,378,3,64,32,0,377,376,1,0,0,0,378,379,1,
		0,0,0,379,377,1,0,0,0,379,380,1,0,0,0,380,382,1,0,0,0,381,383,3,58,29,
		0,382,381,1,0,0,0,383,384,1,0,0,0,384,382,1,0,0,0,384,385,1,0,0,0,385,
		63,1,0,0,0,386,389,5,4,0,0,387,390,3,78,39,0,388,390,5,97,0,0,389,387,
		1,0,0,0,389,388,1,0,0,0,390,391,1,0,0,0,391,395,5,64,0,0,392,393,5,10,
		0,0,393,395,5,64,0,0,394,386,1,0,0,0,394,392,1,0,0,0,395,65,1,0,0,0,396,
		409,3,70,35,0,397,399,3,68,34,0,398,397,1,0,0,0,398,399,1,0,0,0,399,400,
		1,0,0,0,400,402,5,52,0,0,401,403,3,78,39,0,402,401,1,0,0,0,402,403,1,0,
		0,0,403,404,1,0,0,0,404,406,5,52,0,0,405,407,3,74,37,0,406,405,1,0,0,0,
		406,407,1,0,0,0,407,409,1,0,0,0,408,396,1,0,0,0,408,398,1,0,0,0,409,67,
		1,0,0,0,410,413,3,32,16,0,411,413,3,74,37,0,412,410,1,0,0,0,412,411,1,
		0,0,0,413,69,1,0,0,0,414,415,3,84,42,0,415,416,3,36,18,0,416,417,5,64,
		0,0,417,418,3,78,39,0,418,71,1,0,0,0,419,420,5,46,0,0,420,421,3,78,39,
		0,421,422,5,47,0,0,422,73,1,0,0,0,423,428,3,78,39,0,424,425,5,53,0,0,425,
		427,3,78,39,0,426,424,1,0,0,0,427,430,1,0,0,0,428,426,1,0,0,0,428,429,
		1,0,0,0,429,75,1,0,0,0,430,428,1,0,0,0,431,432,5,97,0,0,432,434,5,46,0,
		0,433,435,3,74,37,0,434,433,1,0,0,0,434,435,1,0,0,0,435,436,1,0,0,0,436,
		450,5,47,0,0,437,438,5,37,0,0,438,440,5,46,0,0,439,441,3,74,37,0,440,439,
		1,0,0,0,440,441,1,0,0,0,441,442,1,0,0,0,442,450,5,47,0,0,443,444,5,35,
		0,0,444,446,5,46,0,0,445,447,3,74,37,0,446,445,1,0,0,0,446,447,1,0,0,0,
		447,448,1,0,0,0,448,450,5,47,0,0,449,431,1,0,0,0,449,437,1,0,0,0,449,443,
		1,0,0,0,450,77,1,0,0,0,451,452,6,39,-1,0,452,459,3,80,40,0,453,459,3,76,
		38,0,454,455,7,3,0,0,455,459,3,78,39,15,456,457,7,4,0,0,457,459,3,78,39,
		14,458,451,1,0,0,0,458,453,1,0,0,0,458,454,1,0,0,0,458,456,1,0,0,0,459,
		526,1,0,0,0,460,461,10,13,0,0,461,462,7,5,0,0,462,525,3,78,39,14,463,464,
		10,12,0,0,464,465,7,6,0,0,465,525,3,78,39,13,466,474,10,11,0,0,467,468,
		5,60,0,0,468,475,5,60,0,0,469,470,5,59,0,0,470,471,5,59,0,0,471,475,5,
		59,0,0,472,473,5,59,0,0,473,475,5,59,0,0,474,467,1,0,0,0,474,469,1,0,0,
		0,474,472,1,0,0,0,475,476,1,0,0,0,476,525,3,78,39,12,477,478,10,10,0,0,
		478,479,7,7,0,0,479,525,3,78,39,11,480,481,10,8,0,0,481,482,7,8,0,0,482,
		525,3,78,39,9,483,484,10,7,0,0,484,485,5,78,0,0,485,525,3,78,39,8,486,
		487,10,6,0,0,487,488,5,80,0,0,488,525,3,78,39,7,489,490,10,5,0,0,490,491,
		5,79,0,0,491,525,3,78,39,6,492,493,10,4,0,0,493,494,5,70,0,0,494,525,3,
		78,39,5,495,496,10,3,0,0,496,497,5,71,0,0,497,525,3,78,39,4,498,499,10,
		2,0,0,499,500,5,63,0,0,500,501,3,78,39,0,501,502,5,64,0,0,502,503,3,78,
		39,3,503,525,1,0,0,0,504,505,10,1,0,0,505,506,7,9,0,0,506,525,3,78,39,
		1,507,508,10,19,0,0,508,512,5,54,0,0,509,513,5,97,0,0,510,513,3,76,38,
		0,511,513,5,37,0,0,512,509,1,0,0,0,512,510,1,0,0,0,512,511,1,0,0,0,513,
		525,1,0,0,0,514,515,10,18,0,0,515,516,5,50,0,0,516,517,3,78,39,0,517,518,
		5,51,0,0,518,525,1,0,0,0,519,520,10,16,0,0,520,525,7,10,0,0,521,522,10,
		9,0,0,522,523,5,23,0,0,523,525,3,84,42,0,524,460,1,0,0,0,524,463,1,0,0,
		0,524,466,1,0,0,0,524,477,1,0,0,0,524,480,1,0,0,0,524,483,1,0,0,0,524,
		486,1,0,0,0,524,489,1,0,0,0,524,492,1,0,0,0,524,495,1,0,0,0,524,498,1,
		0,0,0,524,504,1,0,0,0,524,507,1,0,0,0,524,514,1,0,0,0,524,519,1,0,0,0,
		524,521,1,0,0,0,525,528,1,0,0,0,526,524,1,0,0,0,526,527,1,0,0,0,527,79,
		1,0,0,0,528,526,1,0,0,0,529,530,5,46,0,0,530,531,3,78,39,0,531,532,5,47,
		0,0,532,538,1,0,0,0,533,538,5,37,0,0,534,538,5,35,0,0,535,538,3,46,23,
		0,536,538,5,97,0,0,537,529,1,0,0,0,537,533,1,0,0,0,537,534,1,0,0,0,537,
		535,1,0,0,0,537,536,1,0,0,0,538,81,1,0,0,0,539,544,3,84,42,0,540,541,5,
		53,0,0,541,543,3,84,42,0,542,540,1,0,0,0,543,546,1,0,0,0,544,542,1,0,0,
		0,544,545,1,0,0,0,545,83,1,0,0,0,546,544,1,0,0,0,547,551,3,42,21,0,548,
		551,3,86,43,0,549,551,3,88,44,0,550,547,1,0,0,0,550,548,1,0,0,0,550,549,
		1,0,0,0,551,556,1,0,0,0,552,553,5,50,0,0,553,555,5,51,0,0,554,552,1,0,
		0,0,555,558,1,0,0,0,556,554,1,0,0,0,556,557,1,0,0,0,557,85,1,0,0,0,558,
		556,1,0,0,0,559,560,5,109,0,0,560,561,3,12,6,0,561,563,5,46,0,0,562,564,
		3,82,41,0,563,562,1,0,0,0,563,564,1,0,0,0,564,565,1,0,0,0,565,566,5,47,
		0,0,566,87,1,0,0,0,567,568,7,11,0,0,568,89,1,0,0,0,569,570,5,97,0,0,570,
		571,3,94,47,0,571,91,1,0,0,0,572,579,3,94,47,0,573,574,5,54,0,0,574,576,
		5,97,0,0,575,577,3,94,47,0,576,575,1,0,0,0,576,577,1,0,0,0,577,579,1,0,
		0,0,578,572,1,0,0,0,578,573,1,0,0,0,579,93,1,0,0,0,580,582,5,46,0,0,581,
		583,3,74,37,0,582,581,1,0,0,0,582,583,1,0,0,0,583,584,1,0,0,0,584,585,
		5,47,0,0,585,95,1,0,0,0,66,100,104,112,119,124,127,135,140,146,150,157,
		162,171,176,179,184,193,207,217,227,233,240,245,253,257,259,268,275,277,
		285,300,309,317,341,347,354,359,364,374,379,384,389,394,398,402,406,408,
		412,428,434,440,446,449,458,474,512,524,526,537,544,550,556,563,576,578,
		582
	]

	public
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}
