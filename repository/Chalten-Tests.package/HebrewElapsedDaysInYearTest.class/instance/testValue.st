test
testValue
	self assert: (HebrewElapsedDaysInYear for: 5766 asHebrewYear) value = 2105649 daysMeasure.
	self assert: (HebrewElapsedDaysInYear for: 5767 asHebrewYear) value = 2106004 daysMeasure.
	self assert: (HebrewElapsedDaysInYear for: 5768 asHebrewYear) value = 2106359 daysMeasure