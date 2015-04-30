test comparing
testComparing

	self assert: (JulianFebruary of: 2014) < (JulianJune of: 2014).
	self assert: (JulianMarch of: 2014) < (JulianFebruary of: 2015).
	self deny: (JulianApril of: 2014) < (JulianJuly of: 2013).
	
	self should: [ (JulianFebruary of: 2014) > JulianFebruary second ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: JulianFebruary second class
				with: JulianFebruary second
				with: (JulianFebruary of: 2014) class
				with: (JulianFebruary of: 2014)) ].
	
	self should: [ (JulianFebruary of: 2014) < JulianMarch ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: (JulianFebruary of: 2014) class
				with: (JulianFebruary of: 2014)
				with: JulianMarch class
				with: JulianMarch) ]