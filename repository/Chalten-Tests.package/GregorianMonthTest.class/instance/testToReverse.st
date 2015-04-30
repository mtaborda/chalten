test interval protocol
testToReverse

	| coll number |

	coll := (january to: november by: twoMonths) reverse.
	number := 11.
	coll do: [:aMonthDefinition |
		self assert: aMonthDefinition number = number.
		number := number - 2].

	self assert: number = -1