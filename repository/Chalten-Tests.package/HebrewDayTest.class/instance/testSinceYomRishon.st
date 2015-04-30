test instance creation
testSinceYomRishon
	| currentDay |
	currentDay := yomRishon.
	(zeroDays to: 6 daysMeasure)
		do: [ :aNumberOfDays | 
			self assert: (calendar sinceYomRishon: aNumberOfDays) = currentDay.
			currentDay := currentDay next ]