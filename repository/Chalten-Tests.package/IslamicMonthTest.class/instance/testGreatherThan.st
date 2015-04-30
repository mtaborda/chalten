test comparing
testGreatherThan

	self assert: safar > muharram.
	self assert: dhuAlHijja > muharram.
	
	self deny: muharram > safar.
	self deny: muharram > dhuAlHijja.
	
	self should: [ muharram > YomHamishi ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YomHamishi class
				with: YomHamishi
				with: muharram class
				with: muharram) ].
	
	self should: [ muharram >= dhuAlHijja first ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: muharram class
				with: muharram
				with: dhuAlHijja first class
				with: dhuAlHijja first) ]