test enumerating
testNext
	| stream |
	stream := DaysOfMonthsStream
		startingOn: Tishri fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: HebrewCalendar).
	self assert: stream next = Tishri sixteenth.
	self assert: (stream next: 12 daysMeasure) = Tishri twentyeighth.
	self assert: (stream next: 2 daysMeasure) = Tishri thirtieth.
	self assert: (stream next: 25 daysMeasure) = Marheshvan twentyfifth.
	self assert: (stream next: -25 daysMeasure) = Tishri thirtieth.
	self assert: (stream next: -2 daysMeasure) = Tishri twentyeighth.
	self assert: (stream next: -12 daysMeasure) = Tishri sixteenth.
	self assert: (stream next: -1 dayMeasure) = Tishri fifteenth.
	stream := DaysOfMonthsStream
		startingOn: Tishri first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: HebrewCalendar).
	self assert: (stream next: 28 daysMeasure) = Tishri twentyninth.
	stream := DaysOfMonthsStream
		startingOn: Tishri first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: HebrewCalendar).
	self assert: (stream next: 59 daysMeasure) = Marheshvan thirtieth.
	stream := DaysOfMonthsStream
		startingOn: Tishri first
		monthsStrategy: (MonthsOfLeapYearsForCircularStreamStrategy of: HebrewCalendar).
	self assert: (stream next: 60 daysMeasure) = Kislev first