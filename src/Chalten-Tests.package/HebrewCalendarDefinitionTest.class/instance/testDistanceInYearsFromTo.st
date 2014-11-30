test year querying
testDistanceInYearsFromTo

	self assert: (HebrewCalendar
		distanceInYearsFrom: 5773 asHebrewYear
		to: 5775 asHebrewYear) = 2 yearsMeasure