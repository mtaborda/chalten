test accessing
testFirstDate
	self assert: 5767 asHebrewYear firstDate = (Tishri first , 5767).
	self assert: 5765 asHebrewYear firstDate = (Tishri first , 5765)