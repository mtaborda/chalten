enumerating
previousMonth: aMonth in: aNumberOfYears

	aNumberOfYears negative ifTrue: [^self nextMonth: aMonth in: aNumberOfYears negated].
	aNumberOfYears timesRepeat: [
		self upTo: (currentCircularStream upToEnd current ofYear: current year previous).
		self initializeCurrentCircularStream].
	self upTo: (current year monthNumbered: aMonth number).
	^current