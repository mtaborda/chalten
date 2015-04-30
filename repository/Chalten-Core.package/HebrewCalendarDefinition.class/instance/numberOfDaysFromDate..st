dates accessing - private
numberOfDaysFromDate: anHebrewDate
	"To the fixed date of the start of the given year we add the number of elpased days in the given month
	and the length of each elapsed month. We distinguish between months before and after Tishri, wich is
	the seventh month, though the new year begins with its new moon. For dates in the second half of the
	year (months 1...6) we need ti include the lengths of all months from Tishri until last month of hebrew
	year (month 12 or 13).
	- Extracted from 'Calendrical Calculations, The Millennium Edition'; page 104."
	
	| tishri nisan year month dayNumber numberOfDays |
	
	tishri := 7.
	nisan := 1.
	year := anHebrewDate year.
	month := anHebrewDate month.
	dayNumber := anHebrewDate dayNumber.
	numberOfDays := (month number < tishri)
		ifTrue: [((tishri to: year arrayOfMonths last number) inject: 0 into: [:sum :monthNumber | sum + (year monthNumbered: monthNumber) lastDayNumber])
			+ ((nisan to: month number - 1) inject: 0 into: [:sum :monthNumber | sum + (year monthNumbered: monthNumber) lastDayNumber])]
		ifFalse: [(tishri to: month number - 1) inject: 0 into: [:sum :monthNumber | sum + (year monthNumbered: monthNumber) lastDayNumber]].
	^(self newYearFrom: year) + dayNumber - 1 + numberOfDays