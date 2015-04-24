test
testIncludedFromTo

	| timeLineFilter included |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	included :=
		timeLineFilter
			includedFrom: January first, 2004
			to: January eleventh, 2004.

	self assert: included size = 2.
	self assert: (included includes: January third, 2004).
	self assert: (included includes: January tenth, 2004)