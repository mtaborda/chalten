test querying excludes
testExcludesAll

	| timeLineFilter excluded |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	excluded := timeLineFilter negated excludedIn: (January first, 2004 to: January eleventh, 2004).
	self assert: (timeLineFilter negated excludesAll: excluded)