year accessing
newYearNumberFrom: aChristianYear adding: aNumberOfYears

	| newNumber |
	newNumber := aChristianYear number + aNumberOfYears.
	(newNumber = 0 and: [ aNumberOfYears positive ])
		ifTrue: [ ^1 ].
	(newNumber = 0 and: [ aNumberOfYears negative ])
		ifTrue: [ ^-1 ].
	^newNumber