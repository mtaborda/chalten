months accessing
monthNamed: aString

	^[super monthNamed: aString ]
		on: InvalidMonthNameException
		do: [:anException | | lowercaseString |
			lowercaseString := aString asLowercase.
			^self monthsForLeapYears
				detect: [:aMonth | aMonth name asLowercase = lowercaseString]
				ifNone: [anException signal]]