test accessing
testAtMidnight

	self assert: (Tevet first, 5767) atMidnight = (DateTime date: (Tevet first, 5767) timeOfDay: (TimeOfDay hours: 00))