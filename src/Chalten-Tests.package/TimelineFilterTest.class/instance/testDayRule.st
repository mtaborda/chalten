test
testDayRule

	| rule |

	rule := TimelineFilter dayRule: GregorianCalendar saturday.
	self assert: (rule includes: January third, 2004).
	self deny: (rule includes: January fourth, 2004)