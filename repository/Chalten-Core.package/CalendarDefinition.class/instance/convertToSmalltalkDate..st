converting
convertToSmalltalkDate: aDate

	| gregorianDate |
	gregorianDate := aDate asGregorian.
	^Date
		newDay: gregorianDate dayNumber
		month: gregorianDate month name
		year: gregorianDate year number