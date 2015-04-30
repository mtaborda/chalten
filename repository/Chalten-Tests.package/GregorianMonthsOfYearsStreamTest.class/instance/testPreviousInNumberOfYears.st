test enumerating
testPreviousInNumberOfYears

	| stream |
	stream := MonthsOfYearsStream startingOn: January, 2014.
	self assert: (stream previousInNumberOfYears: 3 yearsMeasure) = (January, 2011).
	self assert: (stream previousInNumberOfYears: -3 yearsMeasure) = (January, 2014)