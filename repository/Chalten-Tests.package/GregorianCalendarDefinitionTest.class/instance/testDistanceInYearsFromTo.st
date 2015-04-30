test year querying
testDistanceInYearsFromTo

	self assert: (GregorianCalendar
		distanceInYearsFrom: 2012 asGregorianYear
		to: 2015 asGregorianYear) = 3 yearsMeasure