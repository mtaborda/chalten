evaluating
value
	| yearNumber amountOfDays correction |
	yearNumber := year number.
	amountOfDays := 29 * (self elapsedMonthsIn: yearNumber) + ((self elapsedPartsIn: yearNumber) // 25920).
	correction := (HebrewElapsedDaysInYearCorrectionBehavior for: amountOfDays) value.
	^ (amountOfDays + correction) daysMeasure