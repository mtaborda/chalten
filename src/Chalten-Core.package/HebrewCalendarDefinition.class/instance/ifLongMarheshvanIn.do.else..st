month testing
ifLongMarheshvanIn: aYear do: aBlock else: anotherBlock

	^(self longMarheshvanIn: aYear)
		ifTrue: aBlock
		ifFalse: anotherBlock