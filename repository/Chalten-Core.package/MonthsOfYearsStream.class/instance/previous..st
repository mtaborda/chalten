enumerating
previous: aMeasure
	| monthsToSubstract distanceToTheBeginOfYear |
	aMeasure negative
		ifTrue: [ ^ self next: aMeasure negated ].
	aMeasure unit = TimeUnits year
		ifTrue: [ ^ self previousInNumberOfYears: aMeasure ].
	monthsToSubstract := aMeasure convertTo: TimeUnits month.
	distanceToTheBeginOfYear := currentCircularStream distanceFrom: currentCircularStream first to: current month.
	monthsToSubstract <= distanceToTheBeginOfYear
		ifTrue: [ self upTo: ((currentCircularStream previous: monthsToSubstract) ofYear: current year) ]
		ifFalse: [ 
			self upTo: (currentCircularStream upToEnd current ofYear: current year previous).
			self initializeCurrentCircularStream.
			self previous: monthsToSubstract - distanceToTheBeginOfYear - 1 monthMeasure ].
	^ current