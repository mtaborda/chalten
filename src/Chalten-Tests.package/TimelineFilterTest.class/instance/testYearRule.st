test
testYearRule

	| rule |

	rule := TimelineFilter yearRule: 2004 asGregorianYear.
	self assert: (rule includes: January third, 2004).
	self assert: (rule includes: June third, 2004).
	self deny: (rule includes: January third, 2005)