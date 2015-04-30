dates accessing - private
numberOfDaysFromDate: anIslamicDate
	"Converting from an islamic date to a fixed number is done by summing the days so far in the current month, the days so far in prior months
	of the current islamic year, the days of prior islamic years and the days prior to the islamic calendar.
	- Extracted from 'Calendrical Calculations, The Millennium Edition'; page 89."
	
	| yearNumber monthNumber dayNumber daysBeforeStartOfCalendar ordinaryDaysSinceEpoch leapDaysSinceEpoch daysInPriorMonthsOfThisYear |
	yearNumber := anIslamicDate year number.
	monthNumber := anIslamicDate month number.
	dayNumber := anIslamicDate dayNumber.
	daysBeforeStartOfCalendar := epoch - 1.
	ordinaryDaysSinceEpoch := (yearNumber - 1) * 354.
	leapDaysSinceEpoch := (3 + (11 * yearNumber)) // 30.
	daysInPriorMonthsOfThisYear := 29 * (monthNumber - 1) + ((6 * monthNumber - 1) // 11).
	^daysBeforeStartOfCalendar + ordinaryDaysSinceEpoch + leapDaysSinceEpoch + daysInPriorMonthsOfThisYear + dayNumber