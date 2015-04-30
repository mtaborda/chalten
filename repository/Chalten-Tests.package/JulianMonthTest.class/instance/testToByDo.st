test interval protocol
testToByDo

	| number |

	number := 1.
	(january to: december by: twoMonths) do: [:month |
		self assert: month number = number.
		number := number + 2].

	self assert: number = 13.

	number := 7.
	(july to: june by: oneMonth) do: [:month |
		self assert: month number = number.
		number := (number + 1) rem: 12.
		number = 0 ifTrue: [number := 12]].

	self assert: number = 7