test
testMonthRule

	| rule |

	rule := TimelineFilter monthRule: January.
	self assert: (rule includes: January third, 2004).
	self assert: (rule includes: January third, 2005).
	self deny: (rule includes: February fourth, 2004)