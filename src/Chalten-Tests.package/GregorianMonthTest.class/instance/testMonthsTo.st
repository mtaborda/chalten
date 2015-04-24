test querying
testMonthsTo

	self assert: (january distanceTo: january) = zeroMonths.
	self assert: (january distanceTo: february) = oneMonth.
	self assert: (january distanceTo: december) = elevenMonths.

	self assert: (december distanceTo: january) = oneMonth.
	self assert: (december distanceTo: november) = elevenMonths