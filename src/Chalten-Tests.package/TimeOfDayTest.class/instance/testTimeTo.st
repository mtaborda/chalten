test querying
testTimeTo

	self assert: (TimeOfDay firstTimeOfDay distanceTo: TimeOfDay lastTimeOfDay) = (24 hoursMeasure - 1 millisecondMeasure).
	self assert: (TimeOfDay lastTimeOfDay distanceTo: TimeOfDay firstTimeOfDay) = 1 millisecondMeasure