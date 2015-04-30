test
testRuleFromTo

	| rule |

	rule :=
		TimelineFilter
			rule: (TimelineFilter dayOfMonthRule: January first)
			from: January first, 2004
			to: January first, 2006.

	self assert: (rule includes: January first, 2004).
	self assert: (rule includes: January first, 2005).
	self assert: (rule includes: January first, 2006).
	self deny: (rule includes: January second, 2004).
	self deny: (rule includes: January first, 2007).
	self deny: (rule includes: January first, 2003)