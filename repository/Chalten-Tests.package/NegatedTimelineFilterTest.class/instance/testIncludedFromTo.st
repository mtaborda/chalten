test querying includes
testIncludedFromTo

	| timeLineFilter included |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	included := timeLineFilter negated includedFrom: January fourth, 2004 to: January eleventh, 2004.

	self assert: included size = 7.
	self assert: (included includes: January fourth, 2004).
	self assert: (included includes: January fifth, 2004).
	self assert: (included includes: January sixth, 2004).
	self assert: (included includes: January seventh, 2004).
	self assert: (included includes: January eighth, 2004).
	self assert: (included includes: January ninth, 2004).
	self deny: (included includes: January tenth, 2004).
	self assert: (included includes: January eleventh, 2004)