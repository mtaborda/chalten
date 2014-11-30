testing
canHandle: aYear

	| amountOfDaysInYearNumber amountOfDaysInPreviousYearNumber |
	
	amountOfDaysInYearNumber := (HebrewElapsedDaysInYear for: aYear) value.
	amountOfDaysInPreviousYearNumber := (HebrewElapsedDaysInYear for: aYear previous) value.
	^(amountOfDaysInYearNumber - amountOfDaysInPreviousYearNumber) amount = 382