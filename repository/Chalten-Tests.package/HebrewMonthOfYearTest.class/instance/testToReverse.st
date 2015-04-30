test interval protocol
testToReverse
	| coll number |
	coll := (Tishri , 5768 to: Elul , 5768 by: 2 monthsMeasure) reverse.
	number := 6.
	coll
		do: [ :monthOfYear | 
			number = 0
				ifTrue: [ number := 13 ].
			self assert: monthOfYear monthNumber = number.
			number := number - 2 ].
	self assert: number = 5.
	coll := (Tishri , 5767 to: Elul , 5767 by: 2 monthsMeasure) reverse.
	number := 5.
	coll
		do: [ :monthOfYear | 
			number < 0
				ifTrue: [ number := 11 ].
			self assert: monthOfYear monthNumber = number.
			number := number - 2 ].
	self assert: number = 5