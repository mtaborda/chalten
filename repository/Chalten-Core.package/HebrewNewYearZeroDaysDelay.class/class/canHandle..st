testing
canHandle: aYear

	| amountOfDaysInYearNumber amountOfDaysInPreviousYearNumber amountOfDaysInNextYearNumber |
	
	amountOfDaysInYearNumber := (HebrewElapsedDaysInYear for: aYear) value.
	amountOfDaysInPreviousYearNumber := (HebrewElapsedDaysInYear for: aYear previous) value.
	amountOfDaysInNextYearNumber := (HebrewElapsedDaysInYear for: aYear next) value.
	^((amountOfDaysInYearNumber - amountOfDaysInPreviousYearNumber) amount = 382) not
		and: [((amountOfDaysInNextYearNumber - amountOfDaysInYearNumber) amount = 356) not]