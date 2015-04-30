days accessing
numberOfDaysIn: anIslamicYear
	^ (anIslamicYear firstDate distanceTo: anIslamicYear lastDate) + 1 dayMeasure