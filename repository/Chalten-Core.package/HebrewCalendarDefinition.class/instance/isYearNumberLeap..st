year testing
isYearNumberLeap: aNumber
	"In the hebrew calendar, leap years occurs in years 3, 6, 8, 11, 14, 17, and 19 of the 19-year metonic cycle. This sequence
	can be computed concisely by noting that hebrew year y is leap if and only if (7y + 1) mod 19 is less than 7.
	- Extracted from 'Calendrical Calculations, Third Edition'; page 91."

	^((7 * aNumber + 1) \\ 19) < 7