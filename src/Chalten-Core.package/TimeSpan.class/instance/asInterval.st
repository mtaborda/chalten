converting
asInterval

	^ArithmeticObjectInterval
		from: from
		to: self to
		by: (duration unit with: 1)
		intervalStrategy: PointInTimeIntervalStrategy new.