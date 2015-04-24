testing
testFromInterval

	| interval timespan |

	interval :=
		ArithmeticObjectInterval
			from: midnight
			to: noon
			by: oneHour
			intervalStrategy: PointInTimeIntervalStrategy new.
	timespan := TimeSpan from: midnight duration: twelveHours.
	self assert: (TimeSpan fromInterval: interval) = timespan