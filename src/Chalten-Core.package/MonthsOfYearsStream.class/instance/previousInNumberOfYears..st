enumerating
previousInNumberOfYears: aNumberOfYears

	^aNumberOfYears positive
		ifTrue: [self previousMonth: current month in: aNumberOfYears]
		ifFalse: [self nextMonth: current month in: aNumberOfYears negated]