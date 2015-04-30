test testing
testIsLastDayOfYear

	self assert: (DhuAlHijja thirtieth, 1428) isLastDayOfYear.
	self assert: (DhuAlHijja twentyninth, 1427) isLastDayOfYear.

	self deny: (DhuAlHijja twentyninth, 1428) isLastDayOfYear.
	self deny: (DhuAlQada thirtieth, 1428) isLastDayOfYear.
	self deny: (Ramadan twentyninth, 1428) isLastDayOfYear