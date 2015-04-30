test comparing
testGreaterThan

	| firstTime lastTime |
	firstTime := TimeOfDay firstTimeOfDay.
	lastTime := TimeOfDay lastTimeOfDay.
	
	self assert: lastTime > firstTime.
	self deny: lastTime > lastTime.
	
	self should: [ lastTime <= Monday ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: Monday class
				with: Monday
				with: lastTime class
				with: lastTime) ].
	
	self should: [ firstTime < March ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: firstTime class
				with: firstTime
				with: March class
				with: March) ]