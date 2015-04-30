test accessing
testAtTimeOfDay

	self assert: ((Shawwal first, 1428) atTimeOfDay: (TimeOfDay hours: 10)) = (DateTime date: (Shawwal first, 1428) timeOfDay: (TimeOfDay hours: 10))