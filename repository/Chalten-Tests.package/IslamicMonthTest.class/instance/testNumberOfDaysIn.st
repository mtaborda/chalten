test accessing
testNumberOfDaysIn
	| leapYear nonleapYear |
	leapYear := 1428 asIslamicYear.
	nonleapYear := 1427 asIslamicYear.
	self assert: (muharram numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (muharram numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (safar numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (safar numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (rabiI numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (rabiI numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (rabiII numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (rabiII numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (jumadaI numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (jumadaI numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (jumadaII numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (jumadaII numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (rajab numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (rajab numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (shaban numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (shaban numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (ramadan numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (ramadan numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (shawwal numberOfDaysIn: leapYear) = 29 daysMeasure.
	self assert: (shawwal numberOfDaysIn: nonleapYear) = 29 daysMeasure.
	self assert: (dhuAlQada numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (dhuAlQada numberOfDaysIn: nonleapYear) = 30 daysMeasure.
	self assert: (dhuAlHijja numberOfDaysIn: leapYear) = 30 daysMeasure.
	self assert: (dhuAlHijja numberOfDaysIn: nonleapYear) = 29 daysMeasure