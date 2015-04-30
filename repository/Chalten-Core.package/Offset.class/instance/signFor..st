printing - private
signFor: aMeasure

	aMeasure isNothing ifTrue: [^''].
	^aMeasure positive
		ifTrue: ['+']
		ifFalse: ['-']