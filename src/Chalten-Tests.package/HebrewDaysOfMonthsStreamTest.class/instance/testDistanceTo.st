test querying
testDistanceTo
	| stream |
	stream := DaysOfMonthsStream
		startingOn: Tishri fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: HebrewCalendar).
	self assert: (stream distanceTo: Tishri twentyfirst) = 6 daysMeasure.
	self assert: (stream distanceTo: Elul fifth) = 316 daysMeasure.
	self assert: (stream distanceTo: Nisan twentyfirst) = 184 daysMeasure