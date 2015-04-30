test querying
testTimeToEndOfDay

	self assert: TimeOfDay firstTimeOfDay timeToEndOfDay = 24 hoursMeasure.
	self assert: TimeOfDay lastTimeOfDay timeToEndOfDay = 1 millisecondMeasure