test enumerating
testNext
	| stream |
	stream := MonthsOfYearsStream startingOn: January, 2014.
	self assert: stream next = (February, 2014).
	self assert: (stream next: 12 monthsMeasure) = (February, 2015).
	self assert: (stream next: 25 monthsMeasure) = (March, 2017).
	self assert: (stream next: -25 monthsMeasure) = (February, 2015).
	self assert: (stream next: -12 monthsMeasure) = (February, 2014).
	self assert: (stream next: -1 monthMeasure) = (January, 2014)