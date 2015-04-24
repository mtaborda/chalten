test interval protocol
testToBy
	| interval |
	interval := TimeOfDay firstTimeOfDay to: TimeOfDay lastTimeOfDay by: 1 hourMeasure.
	self assert: interval from = TimeOfDay firstTimeOfDay.
	self assert: interval to = TimeOfDay lastTimeOfDay.
	self assert: interval by = 1 hourMeasure