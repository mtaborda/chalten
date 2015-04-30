test comparing
testEqual
	self assert: (Offset of: 3) = (Offset ofHours: 3 hoursMeasure).
	self deny: (Offset of: 3) = (Offset ofHours: 2 hoursMeasure)