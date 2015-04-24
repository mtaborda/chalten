test querying
testIsLastDayOfMonthIn
	| leapYear nonleapYear |
	leapYear := 1428 asIslamicYear.
	nonleapYear := 1429 asIslamicYear.
	self assert: (Muharram thirtieth isLastDayOfMonthIn: leapYear).
	self assert: (Muharram thirtieth isLastDayOfMonthIn: nonleapYear).
	self assert: (Safar twentyninth isLastDayOfMonthIn: leapYear).
	self assert: (Safar twentyninth isLastDayOfMonthIn: nonleapYear).
	self assert: (DhuAlHijja thirtieth isLastDayOfMonthIn: leapYear).
	self assert: (DhuAlHijja twentyninth isLastDayOfMonthIn: nonleapYear).
	self deny: (Muharram twentyninth isLastDayOfMonthIn: leapYear).
	self deny: (Muharram twentyninth isLastDayOfMonthIn: nonleapYear).
	self deny: (Safar twentyeighth isLastDayOfMonthIn: leapYear).
	self deny: (Safar twentyeighth isLastDayOfMonthIn: nonleapYear).
	self deny: (DhuAlHijja twentyninth isLastDayOfMonthIn: leapYear)