test
testIncludesDayWhenDayIsSaturday
	"The 17 of August move to the third Monday of the month. 
	
	Domingo 18 of August of Year 2002 is not including.
	Monday 19 of August of Year 2002 is including because it was moved from Saturday 17 of August of Year 2002."

	| rule |

	rule :=
		OrdinalDayMonthRule
			ordinal: 3
			day: GregorianCalendar monday
			month: GregorianCalendar august.
	self deny: (rule includes: August eighteenth, 2002).
	self assert: (rule includes: August nineteenth, 2002)