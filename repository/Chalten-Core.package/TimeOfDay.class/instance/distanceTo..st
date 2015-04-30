querying
distanceTo: aTimeOfDay 

	^self <= aTimeOfDay
		ifTrue: [ aTimeOfDay timeFromMidnight - timeFromMidnight ]
		ifFalse: [ self timeToEndOfDay + aTimeOfDay timeFromMidnight ]