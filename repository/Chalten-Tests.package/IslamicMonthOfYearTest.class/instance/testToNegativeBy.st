test interval protocol
testToNegativeBy
	| interval number |
	interval := DhuAlHijja , 2004 to: Muharram , 2004 by: -2 monthsMeasure.
	number := 12.
	interval
		do: [ :monthOfYear | 
			self assert: monthOfYear monthNumber = number.
			number := number - 2 ].
	self assert: number = 0