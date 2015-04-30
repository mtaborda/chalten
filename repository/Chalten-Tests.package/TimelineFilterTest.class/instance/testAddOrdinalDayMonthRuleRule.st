test
testAddOrdinalDayMonthRuleRule

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter
		addOrdinal: 3
		day: GregorianCalendar monday
		monthRule: GregorianCalendar september.

	self assert: (timeLineFilter includes: September nineteenth, 2005).
	self deny: (timeLineFilter includes: September fifteenth, 2005)