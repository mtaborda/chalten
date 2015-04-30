test accessing
testNumberOfDaysToEndOfYear
	self assert: Nisan first numberOfDaysToEndOfYear = 176 daysMeasure.
	self assert: Tishri first numberOfDaysToEndOfYear = 354 daysMeasure.
	self assert: Adar twentyninth numberOfDaysToEndOfYear = 177 daysMeasure.
	self assert: Elul twentyninth numberOfDaysToEndOfYear = 0 daysMeasure