test querying includes
testIncludes

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	timeLineFilter := timeLineFilter negated.

	self assert: (timeLineFilter includes: January fourth, 2004).
	self assert: (timeLineFilter includes: January fifth, 2004).
	self assert: (timeLineFilter includes: January sixth, 2004).
	self assert: (timeLineFilter includes: January seventh, 2004).
	self assert: (timeLineFilter includes: January eighth, 2004).
	self assert: (timeLineFilter includes: January ninth, 2004).
	self deny: (timeLineFilter includes: January tenth, 2004).
	self assert: (timeLineFilter includes: January eleventh, 2004)