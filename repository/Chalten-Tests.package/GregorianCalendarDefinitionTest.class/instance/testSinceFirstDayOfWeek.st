test days accessing
testSinceFirstDayOfWeek
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := GregorianCalendar sunday.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (GregorianCalendar sinceFirstDayOfWeek: numberOfDays) = currentDay.
			currentDay := currentDay next ]