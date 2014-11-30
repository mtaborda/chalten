test enumerating
testPrevious
	| stream |
	stream := MonthsOfYearsStream startingOn: Tishri, 5775.
	self assert: stream previous = (Elul, 5774).
	self assert: (stream previous: 12 monthsMeasure) = (Tishri, 5774).
	self assert: (stream previous: 25 monthsMeasure) = (Elul, 5771).
	self assert: (stream previous: -25 monthsMeasure) = (Tishri, 5774).
	self assert: (stream previous: -12 monthsMeasure) = (Elul, 5774).
	self assert: (stream previous: -1 monthMeasure) = (Tishri, 5775)