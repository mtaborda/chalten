test querying includes
testIncludesAll

	| timeLineFilter included |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	included := timeLineFilter negated includedIn: (January fourth, 2004 to: January eleventh, 2004).

	self assert: (timeLineFilter negated includesAll: included).
	self assert: (timeLineFilter excludesAll: included)