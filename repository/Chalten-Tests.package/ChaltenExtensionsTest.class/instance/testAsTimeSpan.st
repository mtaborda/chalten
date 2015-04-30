test arithmetic object interval
testAsTimeSpan

	| timespan interval |

	timespan := TimeSpan from: TimeOfDay midnight duration: 12 hoursMeasure.
	interval :=
		ArithmeticObjectInterval
			from: TimeOfDay midnight
			to: TimeOfDay noon
			by: 1 hourMeasure
			intervalStrategy: PointInTimeIntervalStrategy new.
	self assert: interval asTimeSpan = timespan