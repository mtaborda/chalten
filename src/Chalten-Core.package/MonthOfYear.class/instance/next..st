enumerating
next: aMeasure

	aMeasure isNothing ifTrue: [^self].
	^(MonthsOfYearsStream startingOn: self) next: aMeasure