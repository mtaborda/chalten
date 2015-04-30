test interval protocol
testToByReverse

	| coll number |

	coll := (Muharram first, 1428 to: Muharram thirtieth, 1428 by: self twoDays) reverse.
	number := 29.
	coll do: [:date |
		self assert: date dayNumber = number.
		number := number - 2].
	self assert: number = -1