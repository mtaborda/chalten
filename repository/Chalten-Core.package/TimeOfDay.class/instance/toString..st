printing - private
toString: aMeasure

	| string |
	string := aMeasure amount asString.
	^string size = 1
		ifTrue: ['0', string]
		ifFalse: [string]