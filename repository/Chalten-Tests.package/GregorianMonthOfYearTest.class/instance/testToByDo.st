test interval protocol
testToByDo

	| number |

	number := 1.
	(January, 2004 to: December, 2004 by: twoMonths) do: [:month |
		self assert: month monthNumber = number.
		number := number + 2].
	self assert: number = 13