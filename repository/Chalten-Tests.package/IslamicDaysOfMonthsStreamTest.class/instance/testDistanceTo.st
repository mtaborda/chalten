test querying
testDistanceTo
	| stream |
	stream := DaysOfMonthsStream
		startingOn: Safar fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: IslamicCalendar).
	self assert: (stream distanceTo: Safar twentyfirst) = 6 daysMeasure.
	self assert: (stream distanceTo: Ramadan fifth) = 196 daysMeasure.
	self assert: (stream distanceTo: Muharram twentyfirst) = 330 daysMeasure