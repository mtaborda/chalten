test includes
testIncludesMonthOfYear
	self assert: (5767 asHebrewYear includes: Nisan , 5767).
	self assert: (5767 asHebrewYear includes: Adar , 5767).
	self assert: (5766 asHebrewYear includes: Nisan , 5766).
	self assert: (5766 asHebrewYear includes: Adar , 5766).
	self deny: (5766 asHebrewYear includes: Nisan , 5767).
	self deny: (5766 asHebrewYear includes: AdarI , 5765)