test accessing
testLastMonth
	self assert: 5767 asHebrewYear lastMonth = (Elul , 5767).
	self assert: 5765 asHebrewYear lastMonth = (Elul , 5765)