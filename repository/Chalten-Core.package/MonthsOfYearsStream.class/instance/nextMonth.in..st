enumerating
nextMonth: aMonth in: aNumberOfYears

	aNumberOfYears negative ifTrue: [^self previousMonth: aMonth in: aNumberOfYears negated].
	aNumberOfYears timesRepeat: [
		self upTo: (currentCircularStream upToBegin current ofYear: current year next).
		self initializeCurrentCircularStream].
	self upTo: (current year monthNumbered: aMonth number).
	^current