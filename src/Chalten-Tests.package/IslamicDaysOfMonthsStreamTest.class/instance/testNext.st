test enumerating
testNext
	| stream |
	stream := DaysOfMonthsStream
		startingOn: Safar fifteenth
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: IslamicCalendar).
	self assert: stream next = Safar sixteenth.
	self assert: (stream next: 12 daysMeasure) = Safar twentyeighth.
	self assert: (stream next: 2 daysMeasure) = RabiI first.
	self assert: (stream next: 25 daysMeasure) = RabiI twentysixth.
	self assert: (stream next: -25 daysMeasure) = RabiI first.
	self assert: (stream next: -2 daysMeasure) = Safar twentyeighth.
	self assert: (stream next: -12 daysMeasure) = Safar sixteenth.
	self assert: (stream next: -1 dayMeasure) = Safar fifteenth.
	stream := DaysOfMonthsStream
		startingOn: Safar first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: IslamicCalendar).
	self assert: (stream next: 28 daysMeasure) = Safar twentyninth.
	stream := DaysOfMonthsStream
		startingOn: DhuAlQada first
		monthsStrategy: (MonthsOfNonleapYearsForCircularStreamStrategy of: IslamicCalendar).
	self assert: (stream next: 59 daysMeasure) = Muharram first.
	stream := DaysOfMonthsStream
		startingOn: DhuAlQada first
		monthsStrategy: (MonthsOfLeapYearsForCircularStreamStrategy of: IslamicCalendar).
	self assert: (stream next: 60 daysMeasure) = Muharram first