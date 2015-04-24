dates accessing - private
numberOfDaysFromDate: aJulianDate
	"We add together the number of days before the epoch of the calendar, the number of nonleap days since the epoch, the number of leap days since the epoch,
	the number of days in prior months of the given date, and the number of days in the given month up to and including the given date. For nonpositive years,
	we adjust the year to accommodate the lack of year 0. - Extracted from 'Calendrical Calculations, The Millennium Edition'; page 65."
	
	| yearNumber monthNumber dayNumber yearNumberCorrected priorNonleapDays priorLeapDays priorDays februaryCorrection |
	yearNumber := aJulianDate year number.
	monthNumber := aJulianDate month number.
	dayNumber := aJulianDate dayNumber.
	yearNumberCorrected := yearNumber < 0 
		ifTrue: [yearNumber + 1]
		ifFalse: [yearNumber].
	priorNonleapDays := epoch - 1 + (365 * (yearNumberCorrected - 1)).
	priorLeapDays := (yearNumberCorrected - 1) // 4.
	priorDays := (367 * monthNumber - 362) // 12.
	februaryCorrection := (CorrectionForFixedFromDateBehavior for: aJulianDate) value.
	^priorNonleapDays + priorLeapDays + priorDays - februaryCorrection + dayNumber