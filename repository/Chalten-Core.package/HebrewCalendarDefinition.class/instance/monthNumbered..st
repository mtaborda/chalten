months accessing
monthNumbered: aNumber

	^[super monthNumbered: aNumber]
		on: InvalidMonthNumberException
		do: [:anException |
			^self monthsForLeapYears
				detect: [:month | month number = aNumber]
				ifNone: [anException signal]]