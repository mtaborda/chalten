year testing
isYearNumberLeap: aNumber
	"A gregorian year y is a leap year if (y mod 4) = 0 ^ (y mod 400) ~= {100, 200, 300}.
	- Extracted from 'Calendrical Calculations, Third Edition'; page 49."


	^aNumber \\ 4 = 0 and: [(aNumber \\ 100 ~= 0 or: [aNumber \\ 400 = 0])]