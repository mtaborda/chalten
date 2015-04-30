test
testAddDayRule

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.

	self assert: (timeLineFilter includes: January third, 2004).
	self deny: (timeLineFilter includes: January fourth, 2004)