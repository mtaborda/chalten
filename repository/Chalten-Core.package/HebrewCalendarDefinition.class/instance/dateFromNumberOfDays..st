dates accessing - private
dateFromNumberOfDays: aNumberOfDays

	| approximation year start month dayNumber |
	approximation := (aNumberOfDays - epoch) // (35975351 / 98496) + 1.
	year := ChaltenYear number: approximation - 1 calendar: self.
	[(self newYearFrom: year) <= aNumberOfDays] whileTrue: [year := year next].
	year := year previous.
	start := aNumberOfDays < (self numberOfDaysFromDate: (self newDateFromYear: year month: Nisan dayNumber: 1)) 
		ifTrue: [Tishri]
		ifFalse: [Nisan].
	month := start.
	[(aNumberOfDays <= (self numberOfDaysFromDate: (self newDateFromYear: year month: month dayNumber: (month ofYear: year) lastDayNumber))) not] 
		whileTrue: [month := year isLeap
			ifTrue: [self nextMonthInLeapYearsFrom: month]
			ifFalse: [self nextMonthInNonleapYearsFrom: month]].
	dayNumber := 1 + aNumberOfDays - (self numberOfDaysFromDate: (self newDateFromYear: year month: month dayNumber: 1)).
	^self
		newDateFromYear: year
		month: month
		dayNumber: dayNumber