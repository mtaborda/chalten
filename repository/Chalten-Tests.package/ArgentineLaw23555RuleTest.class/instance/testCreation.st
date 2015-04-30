testing
testCreation
	"The 16 of September move to following Monday.
	
	Monday 19 of September of Year 2005 is including."

	| rule |

	rule := ArgentineLaw23555Rule monthNumber: 9 dayNumber: 16.

	self assert: (rule includes: September nineteenth, 2005)