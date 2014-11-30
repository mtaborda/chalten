test querying excludes
testExcludes

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter addDayRule: GregorianCalendar saturday.
	self assert: (timeLineFilter negated excludes: January third, 2004).
	self assert: (timeLineFilter negated excludes: January tenth, 2004)