accessing dates
onOrLast: aDayNumber

	^(self isValidDayNumber: aDayNumber)
		ifTrue: [FixedDate monthOfYear: self dayNumber: aDayNumber]
		ifFalse: [self lastDate]