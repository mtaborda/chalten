test includes
testIncludesDate
	self assert: (5767 asHebrewYear includes: Nisan first , 5767).
	self assert: (5767 asHebrewYear includes: Adar twentyninth , 5767).
	self assert: (5766 asHebrewYear includes: Nisan first , 5766).
	self assert: (5768 asHebrewYear includes: AdarII twentyninth , 5768).
	self deny: (5767 asHebrewYear includes: Nisan first , 5766).
	self deny: (5767 asHebrewYear includes: Adar twentyninth , 5769)