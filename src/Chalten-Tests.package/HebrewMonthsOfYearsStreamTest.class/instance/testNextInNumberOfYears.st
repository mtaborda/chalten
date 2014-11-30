test enumerating
testNextInNumberOfYears

	| stream |
	stream := MonthsOfYearsStream startingOn: Tishri, 5774.
	self assert: (stream nextInNumberOfYears: 3 yearsMeasure) = (Tishri, 5777).
	self assert: (stream nextInNumberOfYears: -3 yearsMeasure) = (Tishri, 5774)