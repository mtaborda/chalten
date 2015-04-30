test querying
testDaysTo
	self assert: (December thirtyfirst distanceTo: December thirtyfirst) = 0 daysMeasure.
	self assert: (December thirtyfirst distanceTo: January first) = 1 dayMeasure.
	self assert: (January first distanceTo: December thirtyfirst) = 364 daysMeasure.
	self assert: (January tenth distanceTo: January first) = 356 daysMeasure