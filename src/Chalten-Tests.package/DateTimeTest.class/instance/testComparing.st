test comparing
testComparing

	| januaryFirstOf2004Other |
	januaryFirstOf2004Other := DateTime
		date: January first, 2004
		timeOfDay: (TimeOfDay hours: 00).
		
	self assert: januaryFirstOf2004 = januaryFirstOf2004Other.
	self deny: januaryFirstOf2004 = januarySecondOf2004.
	self deny: januarySecondOf2004 = januarySecondOf2004On00Hours00Minutes01Seconds