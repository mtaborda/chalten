test querying
testIncludesDateTime

	self assert: ((MonthOfYear yearNumber: 2005 monthNumber: 1 calendar: calendar) includes: (January first, 2005) atMidnight).
	self assert: ((MonthOfYear yearNumber: 2005 monthNumber: 1 calendar: calendar) includes: (January thirtyfirst, 2005) atLastTimeOfDay).

	self deny: ((MonthOfYear yearNumber: 2005 monthNumber: 1 calendar: calendar) includes: (February first, 2005) atMidnight).
	self deny: ((MonthOfYear yearNumber: 2005 monthNumber: 1 calendar: calendar) includes: (December thirtyfirst, 2004) atLastTimeOfDay)