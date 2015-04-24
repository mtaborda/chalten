year testing
isYearNumberLeap: aNumber
	"A julian year y is a leap year if (y mod 4) = 0 when y > 0 or if (y mod 4) = 3 when y < 0.
	- Extracted from 'Calendrical Calculations, Third Edition'; page 63."


	^aNumber > 0 ifTrue: [aNumber \\ 4 = 0] ifFalse: [aNumber \\ 4 = 3]