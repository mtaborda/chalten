test querying excludes
testExcludedFromTo

	| timeLineFilter excluded |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	excluded :=
		timeLineFilter negated
			excludedFrom: January first, 2004
			to: January eleventh, 2004.

	self assert: excluded size = 2.
	self assert: (excluded includes: January third, 2004).
	self assert: (excluded includes: January tenth, 2004)