test comparing
testGreaterThan

	self assert: 2008 asJulianYear > 2007 asJulianYear.
	self deny: 2008 asJulianYear > 2008 asJulianYear.
	
	self should: [ 2012 asJulianYear > JulianWednesday ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: JulianWednesday class
				with: JulianWednesday
				with: 2012 asJulianYear class
				with: 2012 asJulianYear) ].
	
	self should: [ 2012 asJulianYear >= JulianApril third ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: 2012 asJulianYear class
				with: 2012 asJulianYear
				with: JulianApril third class
				with: JulianApril third) ]