test accessing
testFirstMonth
	self assert: 5767 asHebrewYear firstMonth = (Tishri , 5767).
	self assert: 5765 asHebrewYear firstMonth = (Tishri , 5765)