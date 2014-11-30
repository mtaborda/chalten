test accessing
testAtNoon

	self assert: (JulianOctober first, 2007) atNoon = (DateTime date: (JulianOctober first, 2007) timeOfDay: (TimeOfDay hours: 12))