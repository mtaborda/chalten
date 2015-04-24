test querying
testMonthsTo

	self assert: (nisan distanceTo: nisan) = zeroMonths.
	self assert: (nisan distanceTo: iyyar) = oneMonth.
	self assert: (nisan distanceTo: adar) = elevenMonths.

	self assert: (adar distanceTo: nisan) = oneMonth.
	self assert: (adar distanceTo: shevat) = elevenMonths