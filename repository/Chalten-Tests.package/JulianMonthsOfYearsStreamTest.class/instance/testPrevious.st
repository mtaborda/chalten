test enumerating
testPrevious
	| stream |
	stream := MonthsOfYearsStream startingOn: JulianJanuary, 2014.
	self assert: stream previous = (JulianDecember, 2013).
	self assert: (stream previous: 12 monthsMeasure) = (JulianDecember, 2012).
	self assert: (stream previous: 25 monthsMeasure) = (JulianNovember, 2010).
	self assert: (stream previous: -25 monthsMeasure) = (JulianDecember, 2012).
	self assert: (stream previous: -12 monthsMeasure) = (JulianDecember, 2013).
	self assert: (stream previous: -1 monthMeasure) = (JulianJanuary, 2014)