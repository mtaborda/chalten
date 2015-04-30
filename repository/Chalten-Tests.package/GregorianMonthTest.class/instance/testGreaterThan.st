test comparing
testGreaterThan

	self assert: february > january.
	self assert: december > january.

	self deny: january > february.
	self deny: january > december.
	
	self should: [ january > Monday ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: Monday class
				with: Monday
				with: january class
				with: january) ].
	
	self should: [ january >= March first ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: january class
				with: january
				with: March first class
				with: March first) ]