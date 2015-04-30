test accessing
testAtMidnight

	self assert: (JulianOctober first, 2007) atMidnight = (DateTime date: (JulianOctober first, 2007) timeOfDay: (TimeOfDay hours: 00))