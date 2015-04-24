enumerating
next: aTimeMeasure in: aTimeZone

	| timeToAdd daysToAdd newTime |

	timeToAdd := timeOfDay timeFromMidnight + aTimeMeasure.
	daysToAdd := (timeToAdd // 1 dayMeasure) daysMeasure.
	newTime := timeToAdd \\ 1 dayMeasure.
	^self class
		date: (date next: daysToAdd)
		timeOfDay: (TimeOfDay timeFromMidnight: newTime)
		zone: aTimeZone