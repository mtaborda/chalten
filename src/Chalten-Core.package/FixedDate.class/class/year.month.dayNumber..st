instance creation
year: aYear month: aMonth dayNumber: aNumber

	^self
		monthOfYear: (MonthOfYear year: aYear month: aMonth)
		dayNumber: aNumber
		calendar: aMonth calendar