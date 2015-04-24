test accessing
testAt

	self assert: (October first, 2007 at: (TimeOfDay hours: 10)) =
		(DateTime date: (October first, 2007) timeOfDay: (TimeOfDay hours: 10))