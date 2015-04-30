test comparing
testHash
	self assert: 5767 asHebrewYear hash = 5767 asHebrewYear hash.
	self deny: 5767 asHebrewYear hash = 5766 asHebrewYear hash