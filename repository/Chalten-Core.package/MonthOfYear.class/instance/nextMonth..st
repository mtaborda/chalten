enumerating
nextMonth: aMonth
	| yearsToMove |
	yearsToMove := (month >= aMonth
		ifTrue: [ 1 ]
		ifFalse: [ 0 ]) yearsMeasure.
	^ self nextMonth: aMonth in: yearsToMove