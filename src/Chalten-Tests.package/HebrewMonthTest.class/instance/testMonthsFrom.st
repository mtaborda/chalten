test querying
testMonthsFrom

	self assert: (nisan distanceFrom: nisan) = zeroMonths.
	self assert: (nisan distanceFrom: iyyar) = elevenMonths.
	self assert: (nisan distanceFrom: adar) = oneMonth.

	self assert: (adar distanceFrom: nisan) = elevenMonths.
	self assert: (adar distanceFrom: shevat) = oneMonth