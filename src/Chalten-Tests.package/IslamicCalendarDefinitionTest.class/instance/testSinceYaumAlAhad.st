test days accessing
testSinceYaumAlAhad
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := IslamicCalendar yaumAlAhad.
	(zeroDays to: 6 daysMeasure)
		do: [ :aNumberOfDays | 
			self assert: (IslamicCalendar sinceYaumAlAhad: aNumberOfDays) = currentDay.
			currentDay := currentDay next ]