test days accessing
testSinceSunday
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := GregorianCalendar sunday.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (GregorianCalendar sinceSunday: numberOfDays) = currentDay.
			currentDay := currentDay next ]