magnitude protocol
< aDate

	self assertIsSameKindAs: aDate.
	^self monthOfYear < aDate monthOfYear
		or: [self monthOfYear = aDate monthOfYear and: [self dayNumber < aDate dayNumber]]