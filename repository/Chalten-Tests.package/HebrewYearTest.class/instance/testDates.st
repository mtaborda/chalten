test accessing
testDates
	self assert: 5767 asHebrewYear dates first = (Tishri first , 5767).
	self assert: 5767 asHebrewYear dates last = (Elul twentyninth , 5767).
	self assert: 5765 asHebrewYear dates first = (Tishri first , 5765).
	self assert: 5765 asHebrewYear dates last = (Elul twentyninth , 5765)