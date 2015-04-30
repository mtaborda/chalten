test enumerating
testNext
	| stream |
	stream := DaysOfMonthsStream
		startingOn: JulianFebruary fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: JulianCalendar).
	self assert: stream next = JulianFebruary sixteenth.
	self assert: (stream next: 12 daysMeasure) = JulianFebruary twentyeighth.
	self assert: (stream next: 2 daysMeasure) = JulianMarch second.
	self assert: (stream next: 25 daysMeasure) = JulianMarch twentyseventh.
	self assert: (stream next: -25 daysMeasure) = JulianMarch second.
	self assert: (stream next: -2 daysMeasure) = JulianFebruary twentyeighth.
	self assert: (stream next: -12 daysMeasure) = JulianFebruary sixteenth.
	self assert: (stream next: -1 dayMeasure) = JulianFebruary fifteenth.
	stream := DaysOfMonthsStream
		startingOn: JulianFebruary first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: JulianCalendar).
	self assert: (stream next: 28 daysMeasure) = JulianMarch first.
	stream := DaysOfMonthsStream
		startingOn: JulianFebruary first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: JulianCalendar).
	self assert: (stream next: 59 daysMeasure) = JulianApril first.
	stream := DaysOfMonthsStream
		startingOn: JulianFebruary first
		monthsStrategy: (MonthsOfLeapYearsForCircularStreamStrategy of: JulianCalendar).
	self assert: (stream next: 60 daysMeasure) = JulianApril first