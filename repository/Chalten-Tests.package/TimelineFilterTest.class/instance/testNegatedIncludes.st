test
testNegatedIncludes

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.

	self assert: (timeLineFilter negated excludes: January third, 2004).
	self assert: (timeLineFilter negated includes: January fourth, 2004).
	self assert: (timeLineFilter negated includes: January fifth, 2004).
	self assert: (timeLineFilter negated includes: January sixth, 2004).
	self assert: (timeLineFilter negated includes: January seventh, 2004).
	self assert: (timeLineFilter negated includes: January eighth, 2004).
	self assert: (timeLineFilter negated includes: January ninth, 2004).
	self assert: (timeLineFilter negated excludes: January tenth, 2004)