test comparing
testComparing

	self assert: (Iyyar of: 5774) > (Tishri of: 5774).
	self assert: (Kislev of: 5774) < (Marheshvan of: 5775).
	self deny: (Tishri of: 5774) > (Shevat of: 5774).
	
	self should: [ (Iyyar of: 5774) > Marheshvan second ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: Marheshvan second class
				with: Marheshvan second
				with: (Iyyar of: 5774) class
				with: (Iyyar of: 5774)) ].
	
	self should: [ (Iyyar of: 5774) < Marheshvan ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: (Iyyar of: 5774) class
				with: (Iyyar of: 5774)
				with: Marheshvan class
				with: Marheshvan) ]