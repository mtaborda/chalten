test interval protocol
testToNegativeBy
	| interval number |
	interval := Elul , 5768 to: Tishri , 5768 by: -2 monthsMeasure.
	number := 6.
	interval
		do: [ :monthOfYear | 
			number = 0
				ifTrue: [ number := 13 ].
			self assert: monthOfYear monthNumber = number.
			number := number - 2 ].
	self assert: number = 5.
	interval := Elul , 5767 to: Tishri , 5767 by: -2 monthsMeasure.
	number := 6.
	interval
		do: [ :monthOfYear | 
			number = 0
				ifTrue: [ number := 12 ].
			self assert: monthOfYear monthNumber = number.
			number := number - 2 ].
	self assert: number = 6