test
testIncludesDayMovesToTheThirdMonday
	"The 17 of August move to the third Monday of the month. 
	
	Tuesday 17 of August of Year 2004 is not including and it moves to the third Monday of the month.
	Monday 16 of August of Year 2004 is including."

	| rule |

	rule :=
		OrdinalDayMonthRule
			ordinal: 3
			day: GregorianCalendar monday
			month: GregorianCalendar august.
	self assert: (rule includes: August sixteenth, 2004).
	self deny: (rule includes: August seventeenth, 2004)