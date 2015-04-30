testing
testAsInterval

	| timespan interval |

	timespan := TimeSpan from: midnight duration: twelveHours.
	interval :=
		ArithmeticObjectInterval
			from: midnight
			to: noon
			by: oneHour
			intervalStrategy: PointInTimeIntervalStrategy new.
	self assert: timespan asInterval = interval