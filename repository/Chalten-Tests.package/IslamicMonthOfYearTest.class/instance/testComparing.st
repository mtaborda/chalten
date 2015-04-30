test comparing
testComparing

	self assert: (Rajab of: 5774) > (Muharram of: 5774).
	self assert: (Ramadan of: 5774) < (RabiI of: 5775).
	self deny: (Shaban of: 5774) < (RabiII of: 5774).
	
	self should: [ (Ramadan of: 5774) > DhuAlHijja second ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: DhuAlHijja second class
				with: DhuAlHijja second
				with: (Ramadan of: 5774) class
				with: (Ramadan of: 5774)) ].
	
	self should: [ (Ramadan of: 5774) < DhuAlHijja ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: (Ramadan of: 5774) class
				with: (Ramadan of: 5774)
				with: DhuAlHijja class
				with: DhuAlHijja) ]