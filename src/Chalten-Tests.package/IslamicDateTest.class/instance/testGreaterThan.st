test comparing
testGreaterThan

	self assert: (Safar first, 1428) > (Muharram thirtieth, 1428).
	self assert: (Safar first, 1428) > (Muharram first, 1).
	self assert: (Safar first, 1428) > (DhuAlHijja twentyninth, 1427).
	
	self should: [ (Muharram first, 2007) >YaumAlAhad ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YaumAlAhad class
				with: YaumAlAhad
				with: (Muharram first, 2007) class
				with: (Muharram first, 2007)) ].
	
	self should: [ (Muharram thirtieth, 2007) >= Safar ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: (Muharram thirtieth, 2007) class
				with: (Muharram thirtieth, 2007)
				with: Safar class
				with: Safar) ]