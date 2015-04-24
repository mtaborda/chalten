enumerating - private
distanceInDaysTo: aDayOfMonth

	| toYear |
	
	toYear := self dayOfMonth <= aDayOfMonth
		ifTrue: [self year]
		ifFalse: [self year next].
	^self distanceTo: (aDayOfMonth ofYear: toYear)