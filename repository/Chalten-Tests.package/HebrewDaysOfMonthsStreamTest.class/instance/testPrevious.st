test enumerating
testPrevious
	| stream |
	stream := DaysOfMonthsStream
		startingOn: Tishri fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: HebrewCalendar).
	self assert: stream previous = Tishri fourteenth.
	self assert: (stream previous: 12 daysMeasure) = Tishri second.
	self assert: (stream previous: 2 daysMeasure) = Elul twentyninth.
	self assert: (stream previous: 25 daysMeasure) = Elul fourth.
	self assert: (stream previous: -25 daysMeasure) = Elul twentyninth.
	self assert: (stream previous: -2 daysMeasure) = Tishri second.
	self assert: (stream previous: -12 daysMeasure) = Tishri fourteenth.
	self assert: (stream previous: -1 dayMeasure) = Tishri fifteenth.
	stream := DaysOfMonthsStream
		startingOn: Tishri first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: HebrewCalendar).
	self assert: (stream previous: 28 daysMeasure) = Elul second.
	stream := DaysOfMonthsStream
		startingOn: Tishri first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: HebrewCalendar).
	self assert: (stream previous: 59 daysMeasure) = Av first.
	stream := DaysOfMonthsStream
		startingOn: Tishri first
		monthsStrategy: (MonthsOfLeapYearsForCircularStreamStrategy of: HebrewCalendar).
	self assert: (stream previous: 60 daysMeasure) = Tammuz twentyninth