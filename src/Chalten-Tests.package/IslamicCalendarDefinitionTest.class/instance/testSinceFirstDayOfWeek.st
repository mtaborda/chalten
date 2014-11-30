test days accessing
testSinceFirstDayOfWeek
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := IslamicCalendar yaumAlAhad.
	(zeroDays to: 6 daysMeasure)
		do: [ :aNumberOfDays | 
			self assert: (IslamicCalendar sinceFirstDayOfWeek: aNumberOfDays) = currentDay.
			currentDay := currentDay next ]