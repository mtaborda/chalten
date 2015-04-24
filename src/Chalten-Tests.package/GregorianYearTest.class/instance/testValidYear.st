test instance creation
testValidYear
	self shouldnt: [ 2007 asGregorianYear ] raise: InvalidYearNumberException