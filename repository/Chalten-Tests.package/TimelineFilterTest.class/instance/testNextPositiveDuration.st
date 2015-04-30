test
testNextPositiveDuration
	| timeLineFilter date |
	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	date := January first , 2004.
	self
		assert:
			(timeLineFilter next: (TimeSpan from: date duration: 1 dayMeasure)) = (date nextDay: GregorianCalendar saturday).
	self
		assert:
			(timeLineFilter next: (TimeSpan from: date duration: 2 daysMeasure))
				= ((date nextDay: GregorianCalendar saturday) nextDay: GregorianCalendar saturday).
	self assert: (timeLineFilter next: (TimeSpan from: date duration: 0 daysMeasure)) = date