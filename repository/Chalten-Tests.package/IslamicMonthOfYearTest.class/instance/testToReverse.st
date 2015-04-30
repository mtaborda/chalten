test interval protocol
testToReverse
	| coll number |
	coll := (Muharram , 2004 to: DhuAlHijja , 2004 by: 2 monthsMeasure) reverse.
	number := 11.
	coll
		do: [ :monthOfYear | 
			self assert: monthOfYear monthNumber = number.
			number := number - 2 ].
	self assert: number = -1