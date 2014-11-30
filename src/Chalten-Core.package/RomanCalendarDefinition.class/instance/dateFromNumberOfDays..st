dates accessing - private
dateFromNumberOfDays: aNumberOfDays

	| yearNumber priorDays correction monthNumber dayNumber |
	yearNumber := self yearNumberFromFixed: aNumberOfDays.
	priorDays := aNumberOfDays - (self numberOfDaysFromDate: self january first , yearNumber).
	correction := (CorrectionForDateFromFixedBehavior for: yearNumber fixed: aNumberOfDays using: self) value.
	monthNumber := (12 * (priorDays + correction) + 373) // 367.
	dayNumber := aNumberOfDays - (self numberOfDaysFromDate: (self newDateFromYearNumber: yearNumber monthNumber: monthNumber dayNumber: 1)) + 1.
	^self
		newDateFromYearNumber: yearNumber
		monthNumber: monthNumber
		dayNumber: dayNumber