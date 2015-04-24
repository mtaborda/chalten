test accessing
testLastDayNumberIn
	| leapYear nonleapYear |
	leapYear := 1428 asIslamicYear.
	nonleapYear := 1427 asIslamicYear.
	self assert: (muharram lastDayNumberIn: leapYear) = 30.
	self assert: (muharram lastDayNumberIn: nonleapYear) = 30.
	self assert: (safar lastDayNumberIn: leapYear) = 29.
	self assert: (safar lastDayNumberIn: nonleapYear) = 29.
	self assert: (rabiI lastDayNumberIn: leapYear) = 30.
	self assert: (rabiI lastDayNumberIn: nonleapYear) = 30.
	self assert: (rabiII lastDayNumberIn: leapYear) = 29.
	self assert: (rabiII lastDayNumberIn: nonleapYear) = 29.
	self assert: (jumadaI lastDayNumberIn: leapYear) = 30.
	self assert: (jumadaI lastDayNumberIn: nonleapYear) = 30.
	self assert: (jumadaII lastDayNumberIn: leapYear) = 29.
	self assert: (jumadaII lastDayNumberIn: nonleapYear) = 29.
	self assert: (rajab lastDayNumberIn: leapYear) = 30.
	self assert: (rajab lastDayNumberIn: nonleapYear) = 30.
	self assert: (shaban lastDayNumberIn: leapYear) = 29.
	self assert: (shaban lastDayNumberIn: nonleapYear) = 29.
	self assert: (ramadan lastDayNumberIn: leapYear) = 30.
	self assert: (ramadan lastDayNumberIn: nonleapYear) = 30.
	self assert: (shawwal lastDayNumberIn: leapYear) = 29.
	self assert: (shawwal lastDayNumberIn: nonleapYear) = 29.
	self assert: (dhuAlQada lastDayNumberIn: leapYear) = 30.
	self assert: (dhuAlQada lastDayNumberIn: nonleapYear) = 30.
	self assert: (dhuAlHijja lastDayNumberIn: leapYear) = 30.
	self assert: (dhuAlHijja lastDayNumberIn: nonleapYear) = 29