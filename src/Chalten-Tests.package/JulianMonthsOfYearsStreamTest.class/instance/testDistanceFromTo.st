test querying
testDistanceFromTo

	| stream |
	stream := MonthsOfYearsStream startingOn: JulianJanuary, 2014.
	self assert: (stream distanceFrom: JulianFebruary, 2014 to: JulianSeptember, 2014) = 8 monthsMeasure.
	self assert: (stream distanceFrom: JulianDecember, 2013 to: JulianSeptember, 2014) = 0 monthsMeasure