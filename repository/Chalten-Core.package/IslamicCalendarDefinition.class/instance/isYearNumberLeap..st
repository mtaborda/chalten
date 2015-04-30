year testing
isYearNumberLeap: aNumber
	"In the islamic calendar, leap years occurs in years 2, 5, 7, 10, 13, 16, 18, 21, 24, 26 and 29 of the 30-year cycle.
	This sequence can be computed concisely by noting that islamic year y is a leap year if and only if (11y + 14) mod 30 is less than 11.
	- Extracted from 'Calendrical Calculations, Third Edition'; page 84."

	^((14 + (11 * aNumber)) \\ 30) < 11