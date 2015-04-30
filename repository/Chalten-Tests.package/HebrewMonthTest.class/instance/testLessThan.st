test comparing
testLessThan

	self assert: nisan < iyyar.
	self assert: nisan < adarII.
	
	self deny: iyyar < nisan.
	self deny: adarII < nisan.
	
	self should: [ nisan <= YaumAlAhad ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YaumAlAhad class
				with: YaumAlAhad
				with: nisan class
				with: nisan) ].
	
	self should: [ nisan < adarII first ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: nisan class
				with: nisan
				with: adarII first class
				with: adarII first) ]