test comparing
testComparing

	self assert: YomRishon < YomShabbat.
	self assert: YomShelishi < YomShishi.
	self deny: YomShabbat < YomRishon.
	
	self should: [ YomRishon > Tishri second ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: Tishri second class
				with: Tishri second
				with: YomRishon class
				with: YomRishon) ].
	
	self should: [ YomShabbat < Tishri ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YomShabbat class
				with: YomShabbat
				with: Tishri class
				with: Tishri) ]