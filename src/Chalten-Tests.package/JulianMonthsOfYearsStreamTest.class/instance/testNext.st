test enumerating
testNext
	| stream |
	stream := MonthsOfYearsStream startingOn: JulianJanuary, 2014.
	self assert: stream next = (JulianFebruary, 2014).
	self assert: (stream next: 12 monthsMeasure) = (JulianFebruary, 2015).
	self assert: (stream next: 25 monthsMeasure) = (JulianMarch, 2017).
	self assert: (stream next: -25 monthsMeasure) = (JulianFebruary, 2015).
	self assert: (stream next: -12 monthsMeasure) = (JulianFebruary, 2014).
	self assert: (stream next: -1 monthMeasure) = (JulianJanuary, 2014)