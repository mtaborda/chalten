magnitude protocol
assertIsSameKindAs: aPointInTime

	(aPointInTime isKindOf: self class)
		ifFalse: [ InvalidComparisonBetweenPointsInTimeException
			signalWith: self
			and: aPointInTime ]