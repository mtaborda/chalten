test querying
testDaysFrom

	self assert: (monday distanceFrom: monday) = zeroDays.
	self assert: (monday distanceFrom: tuesday) = 6 daysMeasure.
	self assert: (monday distanceFrom: wednesday) = 5 daysMeasure.
	self assert: (monday distanceFrom: thursday) = 4 daysMeasure.
	self assert: (monday distanceFrom: friday) = 3 daysMeasure.
	self assert: (monday distanceFrom: saturday) = twoDays.
	self assert: (monday distanceFrom: sunday) = oneDay