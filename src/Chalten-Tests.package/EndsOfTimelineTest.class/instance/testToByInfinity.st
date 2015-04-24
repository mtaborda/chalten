test interval protocol
testToByInfinity
	| interval |
	interval := TheBeginningOfTime to: TheEndOfTime.
	self assert: interval from = TheBeginningOfTime.
	self assert: interval to = TheEndOfTime.
	self assert: interval by = 1 dayMeasure