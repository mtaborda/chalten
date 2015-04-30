test days accessing
testSinceFirstDayOfWeek
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := HebrewCalendar yomRishon.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (HebrewCalendar sinceFirstDayOfWeek: numberOfDays) = currentDay.
			currentDay := currentDay next ]