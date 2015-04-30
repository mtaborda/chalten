test comparing
testLessThan

	self assert: (January first, 2007) < (January second, 2007).
	self assert: (January first, 2007) < (February first, 2007).
	self assert: (January first, 2007) < (January first, 2008).
	
	self should: [ (February first, 2007) <= Monday ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: Monday class
				with: Monday
				with: (February first, 2007) class
				with: (February first, 2007)) ].
	
	self should: [ (January thirtyfirst, 2007) < March ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: (January thirtyfirst, 2007) class
				with: (January thirtyfirst, 2007)
				with: March class
				with: March) ]