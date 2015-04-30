test printing
testPrintString

	| date |

	date := JulianOctober first, 2007.
	self assert: date printString = 'October 1, 2007'