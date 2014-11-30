test arithmetic operations
testSubtract
	self assert: (Offset of: 3) - (Offset ofHours: 1 hourMeasure) = (Offset of: 2).
	self assert: (Offset of: 1) - (Offset ofHours: 3 hoursMeasure) = (Offset of: -2)