test accessing
testFirstDay
	self assert: 5767 asHebrewYear firstDay = (Tishri first , 5767) day.
	self assert: 5765 asHebrewYear firstDay = (Tishri first , 5765) day