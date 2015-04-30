test querying
testNext
	self assert: 5766 asHebrewYear next = 5767 asHebrewYear.
	self assert: -1 asHebrewYear next = 0 asHebrewYear