test enumerating
testNextInNumberOfYears

	| stream |
	stream := MonthsOfYearsStream startingOn: JulianJanuary, 2014.
	self assert: (stream nextInNumberOfYears: 3 yearsMeasure) = (JulianJanuary, 2017).
	self assert: (stream nextInNumberOfYears: -3 yearsMeasure) = (JulianJanuary, 2014)