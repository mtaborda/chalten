test
testValue
	self assert: (HebrewNewYearDelay for: 5767 asHebrewYear) value = 0.
	self assert: (HebrewNewYearDelay for: 5766 asHebrewYear) value = 1.
	self assert: (HebrewNewYearDelay for: 5789 asHebrewYear) value = 2