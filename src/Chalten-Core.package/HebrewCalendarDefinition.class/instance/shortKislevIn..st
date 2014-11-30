month testing
shortKislevIn: aYear

	| daysInYear |
	
	daysInYear := self amountOfDaysIn: aYear.
	^daysInYear = 353 or: [daysInYear = 383]