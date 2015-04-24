test
testDayOfMonthRule

	| rule |

	rule := TimelineFilter dayOfMonthRule: January first.
	self assert: (rule includes: January first, 2004).
	self assert: (rule includes: January first, 2005).
	self deny: (rule includes: January second, 2004)