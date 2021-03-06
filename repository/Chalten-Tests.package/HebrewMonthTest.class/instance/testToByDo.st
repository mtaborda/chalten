test interval protocol
testToByDo

	| number |

	number := 1.
	(nisan to: adar by: twoMonths) do: [:month |
		self assert: month number = number.
		number := number + 2].

	self assert: number = 13.

	number := 7.
	(tishri to: elul by: oneMonth) do: [:month |
		self assert: month number = number.
		number := (number + 1) rem: 12.
		number = 0 ifTrue: [number := 12]].

	self assert: number = 7