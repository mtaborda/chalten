test
testIncludesAll

	| timeLineFilter included |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	included := timeLineFilter includedIn: (January first, 2004 to: January eleventh, 2004).
	self assert: (timeLineFilter includesAll: included)