test interval protocol
testToTheBeginningOfTimeBy
	| interval |
	interval := TimeOfDay midnight toTheBeginningOfTimeBy: 1 dayMeasure.
	self assert: interval from = TimeOfDay midnight.
	self assert: interval to = TheBeginningOfTime.
	self assert: interval by = 1 dayMeasure