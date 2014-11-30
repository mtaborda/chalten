test testing
testIsLastDayOfYear

	self assert: (Elul twentyninth, 5767) isLastDayOfYear.
	self assert: (Elul twentyninth, 5766) isLastDayOfYear.

	self deny: (Elul twentyeighth, 5767) isLastDayOfYear.
	self deny: (Adar twentyninth, 5767) isLastDayOfYear.
	self deny: (Kislev twentyninth, 5767) isLastDayOfYear