testing
testIncludesDayMovesToThePreviousMonday
	"The 02 of April move to previous Monday.
	
	Wednesday 2 of April of Year 2003 is not including and it moves to previous Monday.
	Monday 31 of March of Year 2003 is including."

	| rule |

	rule := ArgentineLaw23555Rule dayOfMonth: April second.

	self deny: (rule includes: April second, 2003).
	self assert: (rule includes: March thirtyfirst, 2003)