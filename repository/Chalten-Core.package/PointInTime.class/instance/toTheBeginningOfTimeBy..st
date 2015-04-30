interval protocol
toTheBeginningOfTimeBy: anIncrement

	^ArithmeticObjectInterval
		from: self
		to: TheBeginningOfTime
		by: anIncrement
		intervalStrategy: InfinityIntervalStrategy new