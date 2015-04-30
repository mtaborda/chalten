test comparing
testLessThan

	self assert: (JulianJanuary first, 2007) < (JulianJanuary second, 2007).
	self assert: (JulianJanuary first, 2007) < (JulianFebruary first, 2007).
	self assert: (JulianJanuary first, 2007) < (JulianJanuary first, 2008).
	
	self should: [ (JulianFebruary first, 2007) <= JulianMonday ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: JulianMonday class
				with: JulianMonday
				with: (JulianFebruary first, 2007) class
				with: (JulianFebruary first, 2007)) ].
	
	self should: [ (JulianJanuary thirtyfirst, 2007) < JulianMarch ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: (JulianJanuary thirtyfirst, 2007) class
				with: (JulianJanuary thirtyfirst, 2007)
				with: JulianMarch class
				with: JulianMarch) ]