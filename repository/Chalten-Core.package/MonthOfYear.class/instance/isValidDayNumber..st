testing
isValidDayNumber: aDayNumber

	^(month isValidDayNumber: aDayNumber) and: [
		aDayNumber <= self lastDayNumber ]