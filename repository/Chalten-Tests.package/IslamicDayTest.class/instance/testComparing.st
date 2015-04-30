test comparing
testComparing

	self assert: YaumAlAhad < YaumAsSabt.
	self assert: YaumAthThalatha < YaumAlHamis.
	self deny: YaumAsSabt < YaumAlAhad.
	
	self should: [ YaumAlAhad > JumadaI second ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: JumadaI second class
				with: JumadaI second
				with: YaumAlAhad class
				with: YaumAlAhad) ].
	
	self should: [ YomShabbat < JumadaI ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YomShabbat class
				with: YomShabbat
				with: JumadaI class
				with: JumadaI) ]