testing
testIncludesDayMovesToTheNextMonday
	"The 02 of April move to following Monday.
	
	Friday 2 of April of Year 2004 is not including and it moves to following Monday.
	Monday 5 of April of Year 2004 is including."

	| rule |

	rule := ArgentineLaw23555Rule dayOfMonth: April second.

	self deny: (rule includes: April second, 2004).
	self assert: (rule includes: April fifth, 2004)