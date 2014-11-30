test accessing
testAtTimeOfDay

	self assert: ((JulianOctober first, 2007) atTimeOfDay: (TimeOfDay hours: 10)) = (DateTime date: (JulianOctober first, 2007) timeOfDay: (TimeOfDay hours: 10))