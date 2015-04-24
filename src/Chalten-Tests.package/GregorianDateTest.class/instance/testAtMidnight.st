test accessing
testAtMidnight

	self assert: (October first, 2007) atMidnight = (DateTime date: (October first, 2007) timeOfDay: (TimeOfDay hours: 00))