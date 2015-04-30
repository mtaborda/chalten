test querying
testIsLastDayOfYearIn
	| leapYear nonleapYear |
	leapYear := 1428 asIslamicYear.
	nonleapYear := 1429 asIslamicYear.
	self assert: (DhuAlHijja thirtieth isLastDayOfYearIn: leapYear).
	self deny: (DhuAlHijja twentyninth isLastDayOfYearIn: leapYear).
	self deny: (DhuAlHijja thirtieth isLastDayOfYearIn: nonleapYear).
	self assert: (DhuAlHijja twentyninth isLastDayOfYearIn: nonleapYear).
	self deny: (DhuAlHijja twentyninth isLastDayOfYearIn: leapYear).
	self deny: (DhuAlQada thirtieth isLastDayOfYearIn: nonleapYear)