test enumerating
testNext
	| stream |
	stream := MonthsOfYearsStream startingOn: Safar, 1445.
	self assert: stream next = (RabiI, 1445).
	self assert: (stream next: 12 monthsMeasure) = (RabiI, 1446).
	self assert: (stream next: 25 monthsMeasure) = (RabiII, 1448).
	self assert: (stream next: -25 monthsMeasure) = (RabiI, 1446).
	self assert: (stream next: -12 monthsMeasure) = (RabiI, 1445).
	self assert: (stream next: -1 monthMeasure) = (Safar, 1445)