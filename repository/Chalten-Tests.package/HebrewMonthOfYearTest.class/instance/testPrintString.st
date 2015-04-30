test printing
testPrintString
	| year |
	year := 5768 asHebrewYear.
	self assert: (MonthOfYear nisanOf: year) printString = (calendar nisan printString , ' of ' , year printString)