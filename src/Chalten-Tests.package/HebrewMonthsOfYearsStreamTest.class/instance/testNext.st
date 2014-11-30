test enumerating
testNext
	| stream |
	stream := MonthsOfYearsStream startingOn: Tishri, 5774.
	self assert: stream next = (Marheshvan, 5774).
	self assert: (stream next: 12 monthsMeasure) = (Tishri, 5775).
	self assert: (stream next: 25 monthsMeasure) = (Tishri, 5777).
	self assert: (stream next: -25 monthsMeasure) = (Tishri, 5775).
	self assert: (stream next: -12 monthsMeasure) = (Marheshvan, 5774).
	self assert: (stream next: -1 monthMeasure) = (Tishri, 5774)