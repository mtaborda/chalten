test enumerating
testPreviousInNumberOfYears

	| stream |
	stream := MonthsOfYearsStream startingOn: Tishri, 5774.
	self assert: (stream previousInNumberOfYears: 3 yearsMeasure) = (Tishri, 5771).
	self assert: (stream previousInNumberOfYears: -3 yearsMeasure) = (Tishri, 5774)