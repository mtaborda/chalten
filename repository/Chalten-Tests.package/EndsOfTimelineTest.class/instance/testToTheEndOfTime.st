test interval protocol
testToTheEndOfTime
	| interval |
	interval := TimeOfDay midnight toTheEndOfTime.
	self assert: interval from = TimeOfDay midnight.
	self assert: interval to = TheEndOfTime.
	self assert: interval by = 1 secondMeasure