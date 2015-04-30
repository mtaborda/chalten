test accessing
testLastDate
	self assert: 5767 asHebrewYear lastDate = (Elul twentyninth , 5767).
	self assert: 5765 asHebrewYear lastDate = (Elul twentyninth , 5765)