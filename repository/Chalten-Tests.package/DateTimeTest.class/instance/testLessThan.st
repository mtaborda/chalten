test comparing
testLessThan

	| dateTime |
	dateTime := DateTime
		date: August third, 2008
		timeOfDay: (TimeOfDay hours: 23 minutes: 5)
		zone: TimeZones greenwich.

	self assert: januaryFirstOf2004On23Hours59Minutes58Seconds < januaryFirstOf2004On23Hours59Minutes59Seconds.
	self assert: januaryFirstOf2004On00Hours00Minutes01Seconds < januaryFirstOf2004On23Hours59Minutes58Seconds.
	self deny: januaryFirstOf2004On23Hours59Minutes59Seconds < januaryFirstOf2004On23Hours59Minutes58Seconds.
	self deny: januaryFirstOf2004On23Hours59Minutes58Seconds < januaryFirstOf2004On00Hours00Minutes01Seconds.
	
	self deny: hourInBsAs < hourInGreenwich.
	self deny: hourInGreenwich < hourInBsAs.
	self assert: hourInBsAs < dateTime.
	self assert: hourInGreenwich < dateTime.
	
	self should: [ hourInBsAs <= Monday ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: Monday class
				with: Monday
				with: hourInBsAs class
				with: hourInBsAs) ].
	
	self should: [ hourInBsAs < March ]
		raise: InvalidComparisonBetweenPointsInTimeException
		withExceptionDo: [ :ex |
			self assert: ex description = ('The <1p> <2p> can not be compared with the <3p> <4p> because are points of different resolution'
				expandMacrosWith: hourInBsAs class
				with: hourInBsAs
				with: March class
				with: March) ]