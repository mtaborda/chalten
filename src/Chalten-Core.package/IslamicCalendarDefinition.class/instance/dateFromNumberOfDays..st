dates accessing - private
dateFromNumberOfDays: aNumberOfDays

	| yearNumber priorDays monthNumber dayNumber |
	yearNumber := (30 * (aNumberOfDays - epoch) + 10646) // 10631.
	priorDays := aNumberOfDays - (self numberOfDaysFromDate: self muharram first , yearNumber).
	monthNumber := (11 * priorDays + 330) // 325.
	dayNumber := aNumberOfDays - (self numberOfDaysFromDate: (self newDateFromYearNumber: yearNumber monthNumber: monthNumber dayNumber: 1)) + 1.
	^self
		newDateFromYearNumber: yearNumber
		monthNumber: monthNumber
		dayNumber: dayNumber