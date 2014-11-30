test
testDifferentMonth
	| rule months |
	rule := OrdinalDayMonthRule ordinal: 3 day: GregorianCalendar monday month: GregorianCalendar august.
	months := 2003 asGregorianYear months reject: [ :monthOfYear | monthOfYear month = GregorianCalendar august ].
	months do: [ :monthOfYear | self deny: (rule includes: (monthOfYear ordinal: 3 day: GregorianCalendar monday)) ]