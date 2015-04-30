test accessing
testNumberOfDaysFromEpoch
	self assert: (January first , 1) numberOfDaysFromEpoch = 0 daysMeasure.
	self assert: (December thirtyfirst , 1901) numberOfDaysFromEpoch = 694324 daysMeasure.
	self assert: (January first , 2007) numberOfDaysFromEpoch = 732676 daysMeasure