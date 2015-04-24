test interval protocol
testToByDo

	| number |

	number := 7.
	(Tishri, 5767 to: Elul, 5767 by: twoMonths) do: [:month |
		self assert: month monthNumber = number.
		number := number + 2.
		number = 13 ifTrue: [number := 1]].
	self assert: number = 7