test interval protocol
testToByReverse

	| coll number |

	coll := (January first, 2007 to: January thirtieth, 2007 by: self twoDays) reverse.
	number := 29.
	coll do: [:date |
		self assert: date dayNumber = number.
		number := number - 2].
	self assert: number = -1