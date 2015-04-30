test comparing
testComparing

	self assert: JulianMonday < JulianSaturday.
	self assert: JulianWednesday < JulianFriday.
	self deny: JulianFriday < JulianThursday.
	
	self should: [ JulianMonday > JulianFebruary second ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: JulianFebruary second class
				with: JulianFebruary second
				with: JulianMonday class
				with: JulianMonday) ].
	
	self should: [ JulianFriday < JulianMarch ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: JulianFriday class
				with: JulianFriday
				with: JulianMarch class
				with: JulianMarch) ]