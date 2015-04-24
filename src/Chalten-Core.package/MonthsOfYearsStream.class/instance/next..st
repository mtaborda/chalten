enumerating
next: aMeasure
	| monthsToAdd distanceToTheEndOfYear |
	aMeasure negative
		ifTrue: [ ^ self previous: aMeasure negated ].
	aMeasure unit = TimeUnits year
		ifTrue: [ ^ self nextInNumberOfYears: aMeasure ].
	monthsToAdd := aMeasure convertTo: TimeUnits month.
	distanceToTheEndOfYear := currentCircularStream distanceFrom: current month to: currentCircularStream last.
	monthsToAdd <= distanceToTheEndOfYear
		ifTrue: [ self upTo: ((currentCircularStream next: monthsToAdd) ofYear: current year) ]
		ifFalse: [ 
			self upTo: (currentCircularStream upToBegin current ofYear: current year next).
			self initializeCurrentCircularStream.
			self next: monthsToAdd - distanceToTheEndOfYear - 1 monthMeasure ].
	^ current