test comparing
testLessThan
	self assert: (TimeOfDay hours: 0) < (TimeOfDay timeFromMidnight: 1 millisecondMeasure).
	self deny: (TimeOfDay timeFromMidnight: 1 millisecondMeasure) < (TimeOfDay hours: 0)