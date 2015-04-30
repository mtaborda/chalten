test querying
testNextLeapYear
	self assert: 5766 asHebrewYear nextLeapYear = 5768 asHebrewYear.
	self assert: 5768 asHebrewYear nextLeapYear = 5771 asHebrewYear.
	self assert: 5600 asHebrewYear nextLeapYear = 5603 asHebrewYear