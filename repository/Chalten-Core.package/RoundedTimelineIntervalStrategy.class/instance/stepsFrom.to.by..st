enumerating
stepsFrom: from to: to by: by

	^by > 0
		ifTrue: [ (from distanceTo: to) / by ]
		ifFalse: [ (from distanceFrom: to) / by negated ]