test comparing
testGreatherThan

	self assert: iyyar > nisan.
	self assert: adarII > nisan.
	
	self deny: nisan > iyyar.
	self deny: nisan > adarII.
	
	self should: [ nisan > YaumAlAhad ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YaumAlAhad class
				with: YaumAlAhad
				with: nisan class
				with: nisan) ].
	
	self should: [ nisan >= adarII first ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: nisan class
				with: nisan
				with: adarII first class
				with: adarII first) ]