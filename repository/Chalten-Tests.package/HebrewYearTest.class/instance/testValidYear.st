test instance creation
testValidYear
	self shouldnt: [ 5767 asHebrewYear ] raise: InvalidYearNumberException