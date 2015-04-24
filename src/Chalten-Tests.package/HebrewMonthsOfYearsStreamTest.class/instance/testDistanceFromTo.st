test querying
testDistanceFromTo

	| stream |
	stream := MonthsOfYearsStream startingOn: Tishri, 5774.
	self assert: (stream distanceFrom: Tishri, 5774 to: Kislev, 5774) = 2 monthsMeasure.
	self assert: (stream distanceFrom: Adar, 5773 to: Kislev, 5774) = 0 monthsMeasure