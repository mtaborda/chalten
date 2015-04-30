test comparing
testGreaterThan

	| dateTime |
	dateTime := DateTime
		date: March eighth, 2008
		timeOfDay: (TimeOfDay hours: 18 minutes: 5)
		zone: TimeZones greenwich.
		
	self assert: januaryFirstOf2004On23Hours59Minutes59Seconds > januaryFirstOf2004.
	self assert: januarySecondOf2004 > januaryFirstOf2004On23Hours59Minutes59Seconds.
	self deny: januaryFirstOf2004 > januaryFirstOf2004On23Hours59Minutes59Seconds.
	self deny: januaryFirstOf2004On23Hours59Minutes59Seconds > januarySecondOf2004.
		
	self deny: hourInBsAs > hourInGreenwich.
	self deny: hourInGreenwich > hourInBsAs.
	self assert: hourInBsAs > dateTime.
	self assert: hourInGreenwich > dateTime.
	
	self should: [ hourInBsAs > Monday ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: Monday class
				with: Monday
				with: hourInBsAs class
				with: hourInBsAs) ].
	
	self should: [ hourInBsAs >= March ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: hourInBsAs class
				with: hourInBsAs
				with: March class
				with: March) ]