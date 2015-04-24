test accessing
testNumberOfDaysFromBeginningOfYearIn
	| leapYear nonleapYear |
	leapYear := 1428 asIslamicYear.
	nonleapYear := 1427 asIslamicYear.
	self assert: (muharram numberOfDaysFromBeginningOfYearIn: leapYear) = 0 daysMeasure.
	self assert: (muharram numberOfDaysFromBeginningOfYearIn: nonleapYear) = 0 daysMeasure.
	self assert: (safar numberOfDaysFromBeginningOfYearIn: leapYear) = 30 daysMeasure.
	self assert: (safar numberOfDaysFromBeginningOfYearIn: nonleapYear) = 30 daysMeasure.
	self assert: (rabiI numberOfDaysFromBeginningOfYearIn: leapYear) = 59 daysMeasure.
	self assert: (rabiI numberOfDaysFromBeginningOfYearIn: nonleapYear) = 59 daysMeasure.
	self assert: (rabiII numberOfDaysFromBeginningOfYearIn: leapYear) = 89 daysMeasure.
	self assert: (rabiII numberOfDaysFromBeginningOfYearIn: nonleapYear) = 89 daysMeasure.
	self assert: (jumadaI numberOfDaysFromBeginningOfYearIn: leapYear) = 118 daysMeasure.
	self assert: (jumadaI numberOfDaysFromBeginningOfYearIn: nonleapYear) = 118 daysMeasure.
	self assert: (jumadaII numberOfDaysFromBeginningOfYearIn: leapYear) = 148 daysMeasure.
	self assert: (jumadaII numberOfDaysFromBeginningOfYearIn: nonleapYear) = 148 daysMeasure.
	self assert: (rajab numberOfDaysFromBeginningOfYearIn: leapYear) = 177 daysMeasure.
	self assert: (rajab numberOfDaysFromBeginningOfYearIn: nonleapYear) = 177 daysMeasure.
	self assert: (shaban numberOfDaysFromBeginningOfYearIn: leapYear) = 207 daysMeasure.
	self assert: (shaban numberOfDaysFromBeginningOfYearIn: nonleapYear) = 207 daysMeasure.
	self assert: (ramadan numberOfDaysFromBeginningOfYearIn: leapYear) = 236 daysMeasure.
	self assert: (ramadan numberOfDaysFromBeginningOfYearIn: nonleapYear) = 236 daysMeasure.
	self assert: (shawwal numberOfDaysFromBeginningOfYearIn: leapYear) = 266 daysMeasure.
	self assert: (shawwal numberOfDaysFromBeginningOfYearIn: nonleapYear) = 266 daysMeasure.
	self assert: (dhuAlQada numberOfDaysFromBeginningOfYearIn: leapYear) = 295 daysMeasure.
	self assert: (dhuAlQada numberOfDaysFromBeginningOfYearIn: nonleapYear) = 295 daysMeasure.
	self assert: (dhuAlHijja numberOfDaysFromBeginningOfYearIn: leapYear) = 325 daysMeasure.
	self assert: (dhuAlHijja numberOfDaysFromBeginningOfYearIn: nonleapYear) = 325 daysMeasure