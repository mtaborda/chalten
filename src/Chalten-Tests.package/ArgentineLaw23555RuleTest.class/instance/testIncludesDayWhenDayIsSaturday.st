testing
testIncludesDayWhenDayIsSaturday
	"The 02 of April move to Monday.

	 Saturday 2 of April of Year 2005 does not move because it is Saturday.
	 Sunday 3 of April of Year 2005 is not including.
	 Monday 4 of April of Year 2005 is not including."

	| rule |

	rule := ArgentineLaw23555Rule dayOfMonth: April second.

	self assert: (rule includes: April second, 2005).
	self deny: (rule includes: April third, 2005).
	self deny: (rule includes: April fourth, 2005)