test accessing
testAtMidnight

	self assert: (Shawwal first, 1428) atMidnight = (DateTime date: (Shawwal first, 1428) timeOfDay: (TimeOfDay hours: 00))