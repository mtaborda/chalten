test creation
testValidNameCreation

	self shouldnt: [calendar dayNamed: 'yaum al-ithnayna'] raise: InvalidDayNameException