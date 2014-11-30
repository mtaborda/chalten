test comparing
testLessThan

	self assert: (Nisan first, 5767) < (Nisan second, 5767).
	self assert: (Nisan first, 5767) < (Iyyar first, 5767).
	self assert: (Nisan first, 5767) < (Nisan first, 5768).
	
	self should: [ (Iyyar first, 2007) <= YomHamishi ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YomHamishi class
				with: YomHamishi
				with: (Iyyar first, 2007) class
				with: (Iyyar first, 2007)) ].
	
	self should: [ (Nisan thirtieth, 2007) < Elul ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: (Nisan thirtieth, 2007) class
				with: (Nisan thirtieth, 2007)
				with: Elul class
				with: Elul) ]