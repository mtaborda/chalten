test printing
testPrintString

	| positiveOffset negativeOffset zeroOffset |
	
	positiveOffset := Offset of: 3.
	self assert: positiveOffset printString = '+03:00'.
	
	negativeOffset := Offset of: -3.
	self assert: negativeOffset printString = '-03:00'.
	
	zeroOffset := Offset of: 0.
	self assert: zeroOffset printString = '00:00'.