test
testMonthOfYearRule

	| rule |

	rule := TimelineFilter monthOfYearRule: (January of: 2004).
	self assert: (rule includes: January third, 2004).
	self deny: (rule includes: January third, 2005)