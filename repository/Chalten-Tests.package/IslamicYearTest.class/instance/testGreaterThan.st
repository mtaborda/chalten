test comparing
testGreaterThan

	self assert: 2004 asIslamicYear > 2003 asIslamicYear.
	self deny: 2004 asIslamicYear > 2004 asIslamicYear.
	
	self should: [ 2004 asIslamicYear > YaumAlJuma ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YaumAlJuma class
				with: YaumAlJuma
				with: 2004 asIslamicYear class
				with: 2004 asIslamicYear) ].
	
	self should: [ 2004 asIslamicYear >= Ramadan third ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: 2004 asIslamicYear class
				with: 2004 asIslamicYear
				with: Ramadan third class
				with: Ramadan third) ]