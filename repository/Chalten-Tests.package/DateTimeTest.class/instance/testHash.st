test comparing
testHash

	| dateTime |
	dateTime := DateTime
		date: March eighth , 2008
		timeOfDay: (TimeOfDay hours: 22 minutes: 5)
		zone: TimeZones greenwich.
	
	self assert: januaryFirstOf2004On23Hours59Minutes59Seconds hash = januaryFirstOf2004On23Hours59Minutes59Seconds hash.
		
	self assert: hourInBsAs hash = hourInGreenwich hash.
	self deny: hourInBsAs hash = dateTime hash.
	self deny: hourInGreenwich hash = dateTime hash