instance creation
yearNumber: aYearNumber month: aMonth dayNumber: aDayNumber

	^self
		monthOfYear: (MonthOfYear yearNumber: aYearNumber month: aMonth)
		dayNumber: aDayNumber
		calendar: aMonth calendar