test
testNextNegativeDuration
	| timeLineFilter date |
	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	date := January thirtyfirst , 2004.
	self
		assert:
			(timeLineFilter next: (TimeSpan from: date duration: -1 dayMeasure)) = (date previousDay: GregorianCalendar saturday).
	self
		assert:
			(timeLineFilter next: (TimeSpan from: date duration: -2 daysMeasure))
				= ((date previousDay: GregorianCalendar saturday) previousDay: GregorianCalendar saturday)