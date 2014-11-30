test support
ifShortKislevDo: aBlock else: anotherBlock

	^(current = longDefinition)
		ifTrue: [ self thirtyDays ]
		ifFalse: [ self twentynineDays ]