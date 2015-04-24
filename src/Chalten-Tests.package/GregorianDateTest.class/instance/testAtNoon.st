test accessing
testAtNoon

	self assert: (October first, 2007) atNoon = (DateTime date: (October first, 2007) timeOfDay: (TimeOfDay hours: 12))