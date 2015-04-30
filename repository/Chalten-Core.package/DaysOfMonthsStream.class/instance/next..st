enumerating
next: aMeasure

	| daysToAdd stream lastDayNumber |
	
	aMeasure negative ifTrue: [ ^self previous: aMeasure negated ].
	daysToAdd := current dayNumber + (aMeasure convertTo: TimeUnits day) amount.
	stream := strategy stream.
	stream upTo: current month.
	lastDayNumber := (strategy numberOfDaysOf: current month) amount.
	(daysToAdd > lastDayNumber)
		ifTrue: [
			current := stream next firstDayOfMonth.
			^self next: (daysToAdd - lastDayNumber - 1) daysMeasure ]
		ifFalse: [
			current := DayOfMonth month: current month dayNumber: daysToAdd ].
	^current