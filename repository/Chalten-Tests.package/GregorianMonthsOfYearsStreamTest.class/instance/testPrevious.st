test enumerating
testPrevious
	| stream |
	stream := MonthsOfYearsStream startingOn: January, 2014.
	self assert: stream previous = (December, 2013).
	self assert: (stream previous: 12 monthsMeasure) = (December, 2012).
	self assert: (stream previous: 25 monthsMeasure) = (November, 2010).
	self assert: (stream previous: -25 monthsMeasure) = (December, 2012).
	self assert: (stream previous: -12 monthsMeasure) = (December, 2013).
	self assert: (stream previous: -1 monthMeasure) = (January, 2014)