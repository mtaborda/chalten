days accessing
amountOfDaysIn: anHebrewYear
	
	^(self newYearFrom: anHebrewYear next) - (self newYearFrom: anHebrewYear)