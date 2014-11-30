test querying
testDaysTo

	self assert: (monday distanceTo: monday) = zeroDays.
	self assert: (monday distanceTo: tuesday) = oneDay.
	self assert: (monday distanceTo: wednesday) = twoDays.
	self assert: (monday distanceTo: thursday) = 3 daysMeasure.
	self assert: (monday distanceTo: friday) = 4 daysMeasure.
	self assert: (monday distanceTo: saturday) = 5 daysMeasure.
	self assert: (monday distanceTo: sunday) = 6 daysMeasure