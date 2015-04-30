days accessing
sinceFirstDayOfWeek: aNumberOfDays

	^self dayPositionedInWeek: (aNumberOfDays convertTo: TimeUnits day) amount + 1