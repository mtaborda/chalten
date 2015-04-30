test year querying
testDistanceInYearsFromTo

	self assert: (IslamicCalendar
		distanceInYearsFrom: 1435 asIslamicYear
		to: 1437 asIslamicYear) = 2 yearsMeasure