test months accessing
testMonthsForNonleapYears

	| months |
	months := Array new: 12.
	months at: 1 put: January.
	months at: 2 put: February.
	months at: 3 put: March.
	months at: 4 put: April.
	months at: 5 put: May.
	months at: 6 put: June.
	months at: 7 put: July.
	months at: 8 put: August.
	months at: 9 put: September.
	months at: 10 put: October.
	months at: 11 put: November.
	months at: 12 put: December.
	
	self assert: GregorianCalendar monthsForNonleapYears = months