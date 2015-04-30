test enumerating
testPrevious
	| stream |
	stream := MonthsOfYearsStream startingOn: Safar, 1445.
	self assert: stream previous = (Muharram, 1445).
	self assert: (stream previous: 12 monthsMeasure) = (Muharram, 1444).
	self assert: (stream previous: 25 monthsMeasure) = (DhuAlHijja, 1441).
	self assert: (stream previous: -25 monthsMeasure) = (Muharram, 1444).
	self assert: (stream previous: -12 monthsMeasure) = (Muharram, 1445).
	self assert: (stream previous: -1 monthMeasure) = (Safar, 1445)