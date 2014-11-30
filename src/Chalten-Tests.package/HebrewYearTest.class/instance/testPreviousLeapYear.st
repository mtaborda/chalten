test querying
testPreviousLeapYear
	self assert: 5767 asHebrewYear previousLeapYear = 5765 asHebrewYear.
	self assert: 5766 asHebrewYear previousLeapYear = 5765 asHebrewYear.
	self assert: 5601 asHebrewYear previousLeapYear = 5600 asHebrewYear