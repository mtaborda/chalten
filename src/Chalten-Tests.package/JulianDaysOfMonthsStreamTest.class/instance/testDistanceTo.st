test querying
testDistanceTo

	| stream |
	stream := DaysOfMonthsStream
		startingOn: JulianFebruary fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: JulianCalendar).
	self assert: (stream distanceTo: JulianFebruary twentyfirst) = 6 daysMeasure.
	self assert: (stream distanceTo: JulianDecember fifth) = 293 daysMeasure.
	self assert: (stream distanceTo: JulianApril twentyfirst) = 65 daysMeasure