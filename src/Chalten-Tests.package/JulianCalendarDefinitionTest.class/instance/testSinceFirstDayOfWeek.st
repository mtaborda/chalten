test days accessing
testSinceFirstDayOfWeek
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := JulianCalendar sunday.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (JulianCalendar sinceFirstDayOfWeek: numberOfDays) = currentDay.
			currentDay := currentDay next ]