test interval protocol
testToByToFixedDate
	| interval |
	interval := TheBeginningOfTime to: TimeOfDay midnight by: 1 dayMeasure.
	self assert: interval from = TheBeginningOfTime.
	self assert: interval to = TimeOfDay midnight.
	self assert: interval by = 1 dayMeasure