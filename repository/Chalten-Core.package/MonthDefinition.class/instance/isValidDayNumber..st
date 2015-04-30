testing
isValidDayNumber: aDayNumber

	^(aDayNumber > 0 and: [
		aDayNumber <= self numberOfDays amount ])