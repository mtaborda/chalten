test comparing
testComparing

	self assert: Monday < Saturday.
	self assert: Wednesday < Friday.
	self deny: Friday < Thursday.
	
	self should: [ Monday > February second ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: February second class
				with: February second
				with: Monday class
				with: Monday) ].
	
	self should: [ Friday < March ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: Friday class
				with: Friday
				with: March class
				with: March) ]