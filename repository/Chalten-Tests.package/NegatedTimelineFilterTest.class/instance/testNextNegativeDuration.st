test enumeration
testNextNegativeDuration
	| timeLineFilter date |
	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	date := January thirtyfirst , 2004.
	self assert: (timeLineFilter negated next: (TimeSpan from: date duration: -1 dayMeasure)) = date previous.
	self
		assert: (timeLineFilter negated next: (TimeSpan from: date duration: -2 daysMeasure)) = (date previous: 2 daysMeasure)