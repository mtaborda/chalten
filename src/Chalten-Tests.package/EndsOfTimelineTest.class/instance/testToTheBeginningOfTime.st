test interval protocol
testToTheBeginningOfTime
	| interval |
	interval := TimeOfDay midnight toTheBeginningOfTime.
	self assert: interval from = TimeOfDay midnight.
	self assert: interval to = TheBeginningOfTime.
	self assert: interval by = 1 secondMeasure