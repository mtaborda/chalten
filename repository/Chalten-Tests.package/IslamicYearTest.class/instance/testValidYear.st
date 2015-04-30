test instance creation
testValidYear
	self shouldnt: [ 2000 asIslamicYear ] raise: InvalidYearNumberException