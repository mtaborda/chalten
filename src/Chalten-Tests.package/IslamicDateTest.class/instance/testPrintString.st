test printing
testPrintString

	| date |

	date := Shawwal first, 1428.
	self assert: date printString = 'Shawwal 1, 1428'