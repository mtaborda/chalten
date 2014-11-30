enumerating
nextInNumberOfYears: aNumberOfYears

	^aNumberOfYears positive
		ifTrue: [self nextMonth: current month in: aNumberOfYears]
		ifFalse: [self previousMonth: current month in: aNumberOfYears negated]