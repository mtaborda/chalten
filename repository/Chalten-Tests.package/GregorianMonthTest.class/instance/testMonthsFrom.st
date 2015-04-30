test querying
testMonthsFrom

	self assert: (january distanceFrom: january) = zeroMonths.
	self assert: (january distanceFrom: february) = elevenMonths.
	self assert: (january distanceFrom: december) = oneMonth.

	self assert: (december distanceFrom: january) = elevenMonths.
	self assert: (december distanceFrom: november) = oneMonth