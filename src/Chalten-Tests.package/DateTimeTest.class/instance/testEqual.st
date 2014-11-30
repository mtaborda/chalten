test comparing
testEqual

	| dateTime |
	dateTime := DateTime
		date: March eighth , 2008
		timeOfDay: (TimeOfDay hours: 22 minutes: 5)
		zone: TimeZones greenwich.
		
	self assert: hourInBsAs = hourInGreenwich.
	self deny: hourInBsAs = dateTime.
	self deny: hourInGreenwich = dateTime