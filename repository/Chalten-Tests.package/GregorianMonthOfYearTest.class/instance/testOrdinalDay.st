test accessing
testOrdinalDay
	"To obtain a certain day of the month, for example the second Wednesday."

	| monthOfYear |
	monthOfYear := MonthOfYear januaryOf: 2004 asGregorianYear.
	self assert: (monthOfYear ordinal: 2 day: calendar wednesday) = (January fourteenth , 2004)