test accessing
testAtNoon

	self assert: (Tevet first, 5767) atNoon = (DateTime date: (Tevet first, 5767) timeOfDay: (TimeOfDay hours: 12))