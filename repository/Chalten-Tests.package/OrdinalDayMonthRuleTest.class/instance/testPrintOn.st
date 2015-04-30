test
testPrintOn

	| rule |
	rule := OrdinalDayMonthRule
		ordinal: 1
		day: GregorianCalendar monday
		month: GregorianCalendar august.
	self assert: rule printString = '1st Monday of August'.
	rule := OrdinalDayMonthRule
		ordinal: 2
		day: GregorianCalendar monday
		month: GregorianCalendar august.
	self assert: rule printString = '2nd Monday of August'.
	rule := OrdinalDayMonthRule
		ordinal: 3
		day: GregorianCalendar monday
		month: GregorianCalendar august.
	self assert: rule printString = '3rd Monday of August'.
	rule := OrdinalDayMonthRule
		ordinal: 4
		day: GregorianCalendar monday
		month: GregorianCalendar august.
	self assert: rule printString = '4th Monday of August'.
	
	"The next two assertions has no sense, its just to test the print format."
	rule := OrdinalDayMonthRule
		ordinal: 12
		day: GregorianCalendar monday
		month: GregorianCalendar august.
	self assert: rule printString = '12th Monday of August'.
	rule := OrdinalDayMonthRule
		ordinal: 24
		day: GregorianCalendar monday
		month: GregorianCalendar august.
	self assert: rule printString = '24th Monday of August'