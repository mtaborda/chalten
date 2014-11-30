test enumerating
testPrevious
	| stream |
	stream := DaysOfMonthsStream
		startingOn: JulianFebruary fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: JulianCalendar).
	self assert: stream previous = JulianFebruary fourteenth.
	self assert: (stream previous: 12 daysMeasure) = JulianFebruary second.
	self assert: (stream previous: 2 daysMeasure) = JulianJanuary thirtyfirst.
	self assert: (stream previous: 25 daysMeasure) = JulianJanuary sixth.
	self assert: (stream previous: -25 daysMeasure) = JulianJanuary thirtyfirst.
	self assert: (stream previous: -2 daysMeasure) = JulianFebruary second.
	self assert: (stream previous: -12 daysMeasure) = JulianFebruary fourteenth.
	self assert: (stream previous: -1 dayMeasure) = JulianFebruary fifteenth.
	stream := DaysOfMonthsStream
		startingOn: JulianFebruary first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: JulianCalendar).
	self assert: (stream previous: 28 daysMeasure) = JulianJanuary fourth.
	stream := DaysOfMonthsStream
		startingOn: JulianFebruary first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: JulianCalendar).
	self assert: (stream previous: 59 daysMeasure) = JulianDecember fourth.
	stream := DaysOfMonthsStream
		startingOn: JulianFebruary first
		monthsStrategy: (MonthsOfLeapYearsForCircularStreamStrategy of: JulianCalendar).
	self assert: (stream previous: 60 daysMeasure) = JulianDecember third