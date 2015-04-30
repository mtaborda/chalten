test printing
testPrintString
	| year |
	year := 2004 asIslamicYear.
	self assert: (MonthOfYear muharramOf: year) printString = (calendar muharram printString , ' of ' , year printString)