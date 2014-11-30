test accessing
testAtTimeOfDay

	self assert: ((October first, 2007) atTimeOfDay: (TimeOfDay hours: 10)) = (DateTime date: (October first, 2007) timeOfDay: (TimeOfDay hours: 10))