test querying
testDistanceFromTo

	| stream |
	stream := MonthsOfYearsStream startingOn: January, 2014.
	self assert: (stream distanceFrom: February, 2014 to: September, 2014) = 8 monthsMeasure.
	self assert: (stream distanceFrom: December, 2013 to: September, 2014) = 0 monthsMeasure