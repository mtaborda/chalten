test enumerating
testNext
	| stream |
	stream := DaysOfMonthsStream
		startingOn: February fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: GregorianCalendar).
	self assert: stream next = February sixteenth.
	self assert: (stream next: 12 daysMeasure) = February twentyeighth.
	self assert: (stream next: 2 daysMeasure) = March second.
	self assert: (stream next: 25 daysMeasure) = March twentyseventh.
	self assert: (stream next: -25 daysMeasure) = March second.
	self assert: (stream next: -2 daysMeasure) = February twentyeighth.
	self assert: (stream next: -12 daysMeasure) = February sixteenth.
	self assert: (stream next: -1 dayMeasure) = February fifteenth.
	stream := DaysOfMonthsStream
		startingOn: February first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: GregorianCalendar).
	self assert: (stream next: 28 daysMeasure) = March first.
	stream := DaysOfMonthsStream
		startingOn: February first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: GregorianCalendar).
	self assert: (stream next: 59 daysMeasure) = April first.
	stream := DaysOfMonthsStream
		startingOn: February first
		monthsStrategy: (MonthsOfLeapYearsForCircularStreamStrategy of: GregorianCalendar).
	self assert: (stream next: 60 daysMeasure) = April first