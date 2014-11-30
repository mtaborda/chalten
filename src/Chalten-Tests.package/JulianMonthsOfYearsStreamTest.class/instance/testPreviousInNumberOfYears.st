test enumerating
testPreviousInNumberOfYears

	| stream |
	stream := MonthsOfYearsStream startingOn: JulianJanuary, 2014.
	self assert: (stream previousInNumberOfYears: 3 yearsMeasure) = (JulianJanuary, 2011).
	self assert: (stream previousInNumberOfYears: -3 yearsMeasure) = (JulianJanuary, 2014)