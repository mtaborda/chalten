months accessing
monthInLeapYearsNumbered: aNumber

	^self monthsForLeapYears
		detect: [:month | month number = aNumber]
		ifNone: [InvalidMonthNumberException signalNumber: aNumber]