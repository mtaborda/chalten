test
testExcludes

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.

	self assert: (timeLineFilter excludes: January fourth, 2004).
	self assert: (timeLineFilter excludes: January fifth, 2004).
	self assert: (timeLineFilter excludes: January sixth, 2004).
	self assert: (timeLineFilter excludes: January seventh, 2004).
	self assert: (timeLineFilter excludes: January eighth, 2004).
	self assert: (timeLineFilter excludes: January ninth, 2004).
	self deny: (timeLineFilter excludes: January tenth, 2004).
	self assert: (timeLineFilter excludes: January eleventh, 2004)