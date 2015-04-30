accessing
numberOfDaysIn: aYear

	^aYear
		ifShortKislevDo: [ (aYear numberOfDaysFor: self) - 1 dayMeasure ]
		else: [ aYear numberOfDaysFor: self ]