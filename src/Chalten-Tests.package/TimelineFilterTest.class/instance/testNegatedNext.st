test
testNegatedNext
	| timeLineFilter timespan nextDate |
	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	timespan := TimeSpan from: January first , 2004 duration: 2 daysMeasure.
	nextDate := timeLineFilter negated next: timespan.
	self assert: nextDate = (January fourth , 2004)