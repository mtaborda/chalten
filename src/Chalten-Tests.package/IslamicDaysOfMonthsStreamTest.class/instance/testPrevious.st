test enumerating
testPrevious
	| stream |
	stream := DaysOfMonthsStream
		startingOn: Safar fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: IslamicCalendar).
	self assert: stream previous = Safar fourteenth.
	self assert: (stream previous: 12 daysMeasure) = Safar second.
	self assert: (stream previous: 2 daysMeasure) = Muharram thirtieth.
	self assert: (stream previous: 25 daysMeasure) = Muharram fifth.
	self assert: (stream previous: -25 daysMeasure) = Muharram thirtieth.
	self assert: (stream previous: -2 daysMeasure) = Safar second.
	self assert: (stream previous: -12 daysMeasure) = Safar fourteenth.
	self assert: (stream previous: -1 dayMeasure) = Safar fifteenth.
	stream := DaysOfMonthsStream
		startingOn: Safar first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: IslamicCalendar).
	self assert: (stream previous: 28 daysMeasure) = Muharram third.
	stream := DaysOfMonthsStream
		startingOn: Muharram first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: IslamicCalendar).
	self assert: (stream previous: 59 daysMeasure) = DhuAlQada first.
	stream := DaysOfMonthsStream
		startingOn: Muharram first
		monthsStrategy: (MonthsOfLeapYearsForCircularStreamStrategy of: IslamicCalendar).
	self assert: (stream previous: 60 daysMeasure) = DhuAlQada first