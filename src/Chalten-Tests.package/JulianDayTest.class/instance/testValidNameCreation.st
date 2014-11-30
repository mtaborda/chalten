test creation
testValidNameCreation

	self shouldnt: [calendar dayNamed: 'Monday'] raise: InvalidDayNameException