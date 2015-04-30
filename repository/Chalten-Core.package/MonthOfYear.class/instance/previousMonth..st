enumerating
previousMonth: aMonth
	| yearsToMove |
	yearsToMove := (month <= aMonth
		ifTrue: [ 1 ]
		ifFalse: [ 0 ]) yearsMeasure.
	^ self previousMonth: aMonth in: yearsToMove