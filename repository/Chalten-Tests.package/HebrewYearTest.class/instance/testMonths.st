test accessing
testMonths
	self assert: 5767 asHebrewYear months size = 12.
	self assert: 5767 asHebrewYear months first = (Tishri , 5767).
	self assert: 5767 asHebrewYear months last = (Elul , 5767).
	self assert: 5765 asHebrewYear months size = 13.
	self assert: 5765 asHebrewYear months first = (Tishri , 5765).
	self assert: 5765 asHebrewYear months last = (Elul , 5765)