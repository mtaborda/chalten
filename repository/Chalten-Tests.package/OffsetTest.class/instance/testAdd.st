test arithmetic operations
testAdd
	self assert: (Offset of: 3) + (Offset ofHours: 1 hourMeasure) = (Offset of: 4).
	self assert: (Offset of: 1) + (Offset ofHours: 3 hoursMeasure) = (Offset of: 4)