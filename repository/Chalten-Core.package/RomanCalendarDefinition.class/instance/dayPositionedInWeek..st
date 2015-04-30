days accessing
dayPositionedInWeek: aNumber

	(aNumber < 1 or: [ aNumber > self amountOfDaysPerWeek ]) 
		ifTrue: [ InvalidDayNumberException signalDayNumber: aNumber ].
	^self days at: aNumber