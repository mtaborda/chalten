test enumeration
testNextPositiveDuration
	| timeLineFilter date |
	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	date := January first , 2004.
	self assert: (timeLineFilter negated next: (TimeSpan from: date duration: 1 dayMeasure)) = date next.
	self assert: (timeLineFilter negated next: (TimeSpan from: date duration: 2 daysMeasure)) = (date next: 3 daysMeasure).
	self assert: (timeLineFilter negated next: (TimeSpan from: date duration: 0 daysMeasure)) = date