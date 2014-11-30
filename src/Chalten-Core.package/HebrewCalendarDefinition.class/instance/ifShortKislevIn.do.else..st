month testing
ifShortKislevIn: aYear do: aBlock else: anotherBlock

	^(self shortKislevIn: aYear)
		ifTrue: aBlock
		ifFalse: anotherBlock