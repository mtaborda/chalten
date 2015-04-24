testing
canHandle: aYear

	| numberOfDaysInYearNumber numberOfDaysInNextYearNumber |
	
	numberOfDaysInYearNumber := (HebrewElapsedDaysInYear for: aYear) value.
	numberOfDaysInNextYearNumber := (HebrewElapsedDaysInYear for: aYear next) value.
	^(numberOfDaysInNextYearNumber - numberOfDaysInYearNumber) amount = 356