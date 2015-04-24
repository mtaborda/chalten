test comparing
testGreaterThan

	self assert: 5767 asHebrewYear > 5766 asHebrewYear.
	self deny: 5767 asHebrewYear > 5767 asHebrewYear.
	
	self should: [ 5767 asHebrewYear > YomShelishi ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: YomShelishi class
				with: YomShelishi
				with: 5767 asHebrewYear class
				with: 5767 asHebrewYear) ].
	
	self should: [ 5767 asHebrewYear >= Tishri third ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: 5767 asHebrewYear class
				with: 5767 asHebrewYear
				with: Tishri third class
				with: Tishri third) ]