enumerating
previous: aMeasure

	| daysToSubtract stream |
	
	aMeasure negative ifTrue: [ ^self next: aMeasure negated ].
	daysToSubtract := current dayNumber - (aMeasure convertTo: TimeUnits day) amount.
	stream := strategy stream.
	stream upTo: current month.
	(daysToSubtract < 1)
		ifTrue: [ | lastDayNumber |
			current := stream previous firstDayOfMonth.
			lastDayNumber := (strategy numberOfDaysOf: current month) amount.
			^self next: (lastDayNumber + daysToSubtract - 1) daysMeasure ]
		ifFalse: [
			current := DayOfMonth month: current month dayNumber: daysToSubtract ].
	^current