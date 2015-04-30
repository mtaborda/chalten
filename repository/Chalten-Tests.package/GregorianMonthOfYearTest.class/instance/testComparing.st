test comparing
testComparing

	self assert: (February of: 2014) < (June of: 2014).
	self assert: (March of: 2014) < (February of: 2015).
	self deny: (April of: 2014) < (July of: 2013).
	
	self should: [ (February of: 2014) > February second ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: February second class
				with: February second
				with: (February of: 2014) class
				with: (February of: 2014)) ].
	
	self should: [ (February of: 2014) < March ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: (February of: 2014) class
				with: (February of: 2014)
				with: March class
				with: March) ]