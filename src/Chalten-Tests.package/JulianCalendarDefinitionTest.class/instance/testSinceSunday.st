test days accessing
testSinceSunday
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := JulianCalendar sunday.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (JulianCalendar sinceSunday: numberOfDays) = currentDay.
			currentDay := currentDay next ]