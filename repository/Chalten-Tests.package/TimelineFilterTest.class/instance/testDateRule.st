test
testDateRule

	| rule |

	rule := TimelineFilter dateRule: January first, 2004.
	self assert: (rule includes: January first, 2004).
	self deny: (rule includes: January first, 2005)