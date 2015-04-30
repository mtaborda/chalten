test interval protocol
testToTheEndOfTimeBy
	| interval |
	interval := TimeOfDay midnight toTheEndOfTimeBy: 1 dayMeasure.
	self assert: interval from = TimeOfDay midnight.
	self assert: interval to = TheEndOfTime.
	self assert: interval by = 1 dayMeasure