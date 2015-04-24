querying
distanceTo: aDayOfMonth

	| daysCount numberOfDays |
	
	daysCount := (current month to: aDayOfMonth month)
		inject: 0
		into: [ :sum :month | sum + (strategy numberOfDaysOf: month) ].
	numberOfDays := (daysCount amount - current dayNumber) + (aDayOfMonth dayNumber -
		(strategy numberOfDaysOf: aDayOfMonth month) amount).
	numberOfDays < 0
		ifTrue: [ numberOfDays := (strategy stream
			inject: 0
			into: [ :sum :month | sum + (strategy numberOfDaysOf: month) ]) amount + numberOfDays ].
	^numberOfDays daysMeasure