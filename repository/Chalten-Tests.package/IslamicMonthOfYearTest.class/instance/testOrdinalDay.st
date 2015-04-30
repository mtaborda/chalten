test accessing
testOrdinalDay
	"To obtain a certain day of the month, for example the second yaum al-arba`a`."

	| monthOfYear |
	monthOfYear := MonthOfYear muharramOf: 1428 asIslamicYear.
	self assert: (monthOfYear ordinal: 2 day: calendar yaumAlArbaa) = (Muharram twelfth , 1428)