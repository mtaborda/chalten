test months accessing
testMonthsForNonleapYears

	| months |
	months := Array new: 12.
	months at: 1 put: JulianJanuary.
	months at: 2 put: JulianFebruary.
	months at: 3 put: JulianMarch.
	months at: 4 put: JulianApril.
	months at: 5 put: JulianMay.
	months at: 6 put: JulianJune.
	months at: 7 put: JulianJuly.
	months at: 8 put: JulianAugust.
	months at: 9 put: JulianSeptember.
	months at: 10 put: JulianOctober.
	months at: 11 put: JulianNovember.
	months at: 12 put: JulianDecember.
	
	self assert: JulianCalendar monthsForNonleapYears = months