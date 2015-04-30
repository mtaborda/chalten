enumerating
next: aMeasure

	^(TimeUnits day sameDomainAs: aMeasure unit)
		ifTrue: [calendar dateFromDays: (self dayNumberFromEpoch + aMeasure)]
		ifFalse: [self nextMonth: aMeasure]