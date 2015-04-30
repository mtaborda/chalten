month preconditions
assert: aMonth isValidIn: aYear

	(self is: aMonth adarInLeapYear: aYear)
		ifTrue: [InvalidMonthForLeapYearsException signalMonth: aMonth year: aYear].
	(self is: aMonth adarIOrAdarIIInNonleapYear: aYear)
		ifTrue: [InvalidMonthForNonleapYearsException signalMonth: aMonth year: aYear]