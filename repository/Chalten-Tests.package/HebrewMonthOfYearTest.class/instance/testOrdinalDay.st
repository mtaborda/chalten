test accessing
testOrdinalDay
	"To obtain a certain day of the month, for example the second yom revi`i."

	| monthOfYear |
	monthOfYear := MonthOfYear nisanOf: 5767 asHebrewYear.
	self assert: (monthOfYear ordinal: 2 day: calendar yomRevii) = (Nisan ninth , 5767)