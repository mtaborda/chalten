test year querying
testDistanceInYearsFromTo

	self assert: (JulianCalendar
		distanceInYearsFrom: 2012 asJulianYear
		to: 2015 asJulianYear) = 3 yearsMeasure