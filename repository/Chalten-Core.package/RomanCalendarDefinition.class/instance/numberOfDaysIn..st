days accessing
numberOfDaysIn: aChristianYear
	^ (aChristianYear firstDate distanceTo: aChristianYear lastDate) + 1 dayMeasure