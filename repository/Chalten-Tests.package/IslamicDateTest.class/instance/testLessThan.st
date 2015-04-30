test comparing
testLessThan

	self assert: (Muharram first, 2004) < (Muharram second, 2004).
	self assert: (Muharram first, 2004) < (Safar first, 2004).
	self assert: (Muharram first, 2004) < (Muharram first, 2005).
	
	self should: [ (Muharram first, 2007) <= YaumAlAhad ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YaumAlAhad class
				with: YaumAlAhad
				with: (Muharram first, 2007) class
				with: (Muharram first, 2007)) ].
	
	self should: [ (Muharram thirtieth, 2007) < Safar ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: (Muharram thirtieth, 2007) class
				with: (Muharram thirtieth, 2007)
				with: Safar class
				with: Safar) ]