test interval protocol
testTo
	| interval |
	interval := TimeOfDay firstTimeOfDay to: TimeOfDay lastTimeOfDay.
	self assert: interval from = TimeOfDay firstTimeOfDay.
	self assert: interval to = TimeOfDay lastTimeOfDay.
	self assert: interval by = 1 secondMeasure