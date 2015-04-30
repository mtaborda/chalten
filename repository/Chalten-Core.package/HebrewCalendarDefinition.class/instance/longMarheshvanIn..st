month testing
longMarheshvanIn: aYear

	| daysInYear |
	
	daysInYear := self amountOfDaysIn: aYear.
	^daysInYear = 355 or: [daysInYear = 385]