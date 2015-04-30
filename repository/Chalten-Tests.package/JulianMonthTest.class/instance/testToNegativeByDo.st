test interval protocol
testToNegativeByDo

	| number |

	number := 12.
	(december to: january by: oneMonth negated) do: [:month |
		self assert: month number = number.
		number := number - 1].

	self assert: number = 0