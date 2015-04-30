test querying
testDistanceTo

	| stream |
	stream := DaysOfMonthsStream
		startingOn: February fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: GregorianCalendar).
	self assert: (stream distanceTo: February twentyfirst) = 6 daysMeasure.
	self assert: (stream distanceTo: December fifth) = 293 daysMeasure.
	self assert: (stream distanceTo: April twentyfirst) = 65 daysMeasure