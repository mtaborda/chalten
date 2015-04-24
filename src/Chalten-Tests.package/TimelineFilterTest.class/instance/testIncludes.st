test
testIncludes

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.

	self assert: (timeLineFilter includes: January third, 2004).
	self assert: (timeLineFilter includes: January tenth, 2004)