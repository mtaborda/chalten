test comparing
testLessThan

	self assert: 2007 asGregorianYear < 2008 asGregorianYear.
	self deny: 2007 asGregorianYear < 2007 asGregorianYear.
	
	self should: [ 2012 asGregorianYear <= Wednesday ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: Wednesday class
				with: Wednesday
				with: 2012 asGregorianYear class
				with: 2012 asGregorianYear) ].
	
	self should: [ 2012 asGregorianYear < April third ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: 2012 asGregorianYear class
				with: 2012 asGregorianYear
				with: April third class
				with: April third) ]