test days accessing
testSinceYomRishon
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := HebrewCalendar yomRishon.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (HebrewCalendar sinceYomRishon: numberOfDays) = currentDay.
			currentDay := currentDay next ]