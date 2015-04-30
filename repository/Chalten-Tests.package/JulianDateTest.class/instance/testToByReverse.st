test interval protocol
testToByReverse

	| coll number |

	coll := (JulianJanuary first, 2007 to: JulianJanuary thirtieth, 2007 by: self twoDays) reverse.
	number := 29.
	coll do: [:date |
		self assert: date dayNumber = number.
		number := number - 2].
	self assert: number = -1