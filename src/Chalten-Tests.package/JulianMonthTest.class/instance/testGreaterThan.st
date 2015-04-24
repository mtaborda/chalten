test comparing
testGreaterThan

	self assert: february > january.
	self assert: december > january.

	self deny: january > february.
	self deny: january > december.
	
	self should: [ january > JulianMonday ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: JulianMonday class
				with: JulianMonday
				with: january class
				with: january) ].
	
	self should: [ january >= JulianMarch first ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: january class
				with: january
				with: JulianMarch first class
				with: JulianMarch first) ]