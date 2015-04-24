test accessing
testAtNoon

	self assert: (Shawwal first, 1428) atNoon = (DateTime date: (Shawwal first, 1428) timeOfDay: (TimeOfDay hours: 12))