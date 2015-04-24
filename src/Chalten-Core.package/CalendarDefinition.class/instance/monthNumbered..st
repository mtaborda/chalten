months accessing
monthNumbered: aNumber

	^self months
		detect: [:month | month number = aNumber]
		ifNone: [InvalidMonthNumberException signalNumber: aNumber]