enumerating - private
distanceInDaysFrom: aDayOfMonth

	| fromYear |
	
	fromYear := self dayOfMonth >= aDayOfMonth
		ifTrue: [self year]
		ifFalse: [self year previous].
	^self distanceFrom: (aDayOfMonth ofYear: fromYear)