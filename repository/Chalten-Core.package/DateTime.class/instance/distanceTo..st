querying
distanceTo: aDateTime
	
	^ (self = aDateTime)
		ifTrue: [ aDateTime timeFromMidnight - self timeFromMidnight ]
		ifFalse: [ (date distanceTo: aDateTime date) -
			1 dayMeasure + self timeToEndOfDay + aDateTime timeFromMidnight ]