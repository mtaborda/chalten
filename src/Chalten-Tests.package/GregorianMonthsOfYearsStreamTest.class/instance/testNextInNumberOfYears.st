test enumerating
testNextInNumberOfYears

	| stream |
	stream := MonthsOfYearsStream startingOn: January, 2014.
	self assert: (stream nextInNumberOfYears: 3 yearsMeasure) = (January, 2017).
	self assert: (stream nextInNumberOfYears: -3 yearsMeasure) = (January, 2014)