test includes
testIncludesDateTime
	self assert: (5767 asHebrewYear includes: (Nisan first , 5767) atMidnight).
	self assert: (5767 asHebrewYear includes: (Adar twentyninth , 5767) atLastTimeOfDay).
	self assert: (5766 asHebrewYear includes: (Nisan first , 5766) atMidnight).
	self assert: (5768 asHebrewYear includes: (AdarII twentyninth , 5768) atLastTimeOfDay).
	self deny: (5767 asHebrewYear includes: (Nisan first , 5766) atMidnight).
	self deny: (5767 asHebrewYear includes: (Adar twentyninth , 5769) atLastTimeOfDay)