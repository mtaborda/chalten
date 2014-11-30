test instance creation
testValidYear
	self shouldnt: [ 2007 asJulianYear ] raise: InvalidYearNumberException