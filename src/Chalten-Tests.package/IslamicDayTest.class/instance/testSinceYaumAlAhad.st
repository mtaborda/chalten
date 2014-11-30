test instance creation
testSinceYaumAlAhad
	| currentDay |
	currentDay := yaumAlAhad.
	(zeroDays to: 6 daysMeasure)
		do: [ :aNumberOfDays | 
			self assert: (calendar sinceYaumAlAhad: aNumberOfDays) = currentDay.
			currentDay := currentDay next ]