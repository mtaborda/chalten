test querying
testTimeFromMidnight

	self assert: TimeOfDay firstTimeOfDay timeFromMidnight = 0 hoursMeasure.
	self assert: TimeOfDay lastTimeOfDay timeFromMidnight = (24 hoursMeasure - 1 millisecondMeasure)