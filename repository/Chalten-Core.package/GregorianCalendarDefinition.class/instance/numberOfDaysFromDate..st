dates accessing - private
numberOfDaysFromDate: aDate
	"We add together the number of days before the epoch of the calendar (0, but we do it explicit so that the dependence on our arbitrary starting date is clear),
	the number of nonleap days since the epoch, the number of leap days since the epoch, the number of days in prior months of the given date,
	and the number of days up to and including the given date. The number of days in prior months of the given year is corrected by 0, 1 or 2
	for the assumption that February always has 30 days. - Extracted from 'Calendrical Calculations, The Millennium Edition'; page 51."
	
	| yearNumber monthNumber dayNumber priorNonleapDays priorLeapDays priorDays februaryCorrection |
	yearNumber := aDate year number.
	monthNumber := aDate month number.
	dayNumber := aDate dayNumber.
	priorNonleapDays := epoch - 1 + (365 * (yearNumber - 1)).
	priorLeapDays := (yearNumber - 1) // 4 - ((yearNumber - 1) // 100) + ((yearNumber - 1) // 400).
	priorDays := (367 * monthNumber - 362) // 12.
	februaryCorrection := (CorrectionForFixedFromDateBehavior for: aDate) value.
	^priorNonleapDays + priorLeapDays + priorDays - februaryCorrection + dayNumber