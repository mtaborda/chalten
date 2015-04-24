test accessing
testAtTimeOfDay

	self assert: ((Tevet first, 5767) atTimeOfDay: (TimeOfDay hours: 10)) = (DateTime date: (Tevet first, 5767) timeOfDay: (TimeOfDay hours: 10))