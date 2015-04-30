test accessing
testOrdinalDay
	"To obtain a certain day of the month, for example the second Wednesday."

	| monthOfYear |
	monthOfYear := MonthOfYear januaryOf: 2004 asJulianYear.
	self assert: (monthOfYear ordinal: 2 day: calendar wednesday) = (JulianJanuary eighth , 2004)