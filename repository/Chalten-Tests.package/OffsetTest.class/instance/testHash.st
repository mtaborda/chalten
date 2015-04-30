test comparing
testHash
	self assert: (Offset of: 3) hash = (Offset ofHours: 3 hoursMeasure) hash.
	self deny: (Offset of: 3) hash = (Offset ofHours: 2 hoursMeasure) hash