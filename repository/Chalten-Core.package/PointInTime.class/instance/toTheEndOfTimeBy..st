interval protocol
toTheEndOfTimeBy: anIncrement

	^ArithmeticObjectInterval
		from: self
		to: TheEndOfTime
		by: anIncrement
		intervalStrategy: InfinityIntervalStrategy new