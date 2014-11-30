test enumerating
testPrevious
	| stream |
	stream := DaysOfMonthsStream
		startingOn: February fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: GregorianCalendar).
	self assert: stream previous = February fourteenth.
	self assert: (stream previous: 12 daysMeasure) = February second.
	self assert: (stream previous: 2 daysMeasure) = January thirtyfirst.
	self assert: (stream previous: 25 daysMeasure) = January sixth.
	self assert: (stream previous: -25 daysMeasure) = January thirtyfirst.
	self assert: (stream previous: -2 daysMeasure) = February second.
	self assert: (stream previous: -12 daysMeasure) = February fourteenth.
	self assert: (stream previous: -1 dayMeasure) = February fifteenth.
	stream := DaysOfMonthsStream
		startingOn: February first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: GregorianCalendar).
	self assert: (stream previous: 28 daysMeasure) = January fourth.
	stream := DaysOfMonthsStream
		startingOn: February first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: GregorianCalendar).
	self assert: (stream previous: 59 daysMeasure) = December fourth.
	stream := DaysOfMonthsStream
		startingOn: February first
		monthsStrategy: (MonthsOfLeapYearsForCircularStreamStrategy of: GregorianCalendar).
	self assert: (stream previous: 60 daysMeasure) = December third