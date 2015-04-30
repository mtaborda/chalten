test printing
testPrintString

	| date |

	date := Tevet first, 5767.
	self assert: date printString = 'Tevet 1, 5767'