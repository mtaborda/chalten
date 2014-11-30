test testing
testIsLastDayOfMonth

	self assert: (Muharram thirtieth, 1428) isLastDayOfMonth.
	self assert: (Safar twentyninth, 1428) isLastDayOfMonth.
	self assert: (RabiI thirtieth, 1428) isLastDayOfMonth.
	self assert: (RabiII twentyninth, 1428) isLastDayOfMonth.
	self assert: (JumadaI thirtieth, 1428) isLastDayOfMonth.
	self assert: (JumadaII twentyninth, 1428) isLastDayOfMonth.
	self assert: (Rajab thirtieth, 1428) isLastDayOfMonth.
	self assert: (Shaban twentyninth, 1428) isLastDayOfMonth.
	self assert: (Ramadan thirtieth, 1428) isLastDayOfMonth.
	self assert: (Shawwal twentyninth, 1428) isLastDayOfMonth.
	self assert: (DhuAlQada thirtieth, 1428) isLastDayOfMonth.
	self assert: (DhuAlHijja twentyninth, 1427) isLastDayOfMonth.
	self assert: (DhuAlHijja thirtieth, 1428) isLastDayOfMonth

