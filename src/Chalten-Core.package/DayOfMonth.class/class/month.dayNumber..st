instance creation
month: aMonth dayNumber: aDayNumber

	(aMonth isValidDayNumber: aDayNumber)
		ifFalse: [InvalidDayOfMonthException signalMonth: aMonth dayNumber: aDayNumber].

	^self new initializeMonth: aMonth dayNumber: aDayNumber