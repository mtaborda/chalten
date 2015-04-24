test
testExcludesAll

	| timeLineFilter excluded |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	excluded := timeLineFilter excludedIn: (January fourth, 2004 to: January eleventh, 2004).
	self assert: (timeLineFilter excludesAll: excluded)