test creation
testValidNameCreation

	self shouldnt: [calendar dayNamed: 'yom shishi'] raise: InvalidDayNameException