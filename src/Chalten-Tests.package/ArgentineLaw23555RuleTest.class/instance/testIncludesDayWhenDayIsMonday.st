testing
testIncludesDayWhenDayIsMonday
	"The 02 of April move to Monday.

	  Monday 2 of April of Year 2007 does not move because already it is Monday."

	| rule |

	rule := ArgentineLaw23555Rule dayOfMonth: April second.

	self assert: (rule includes: April second, 2007)