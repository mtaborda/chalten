test querying
testTimeFrom

	self assert: (TimeOfDay firstTimeOfDay distanceFrom: TimeOfDay lastTimeOfDay) = 1 millisecondMeasure.
	self assert: (TimeOfDay lastTimeOfDay distanceFrom: TimeOfDay firstTimeOfDay) = (24 hoursMeasure - 1 millisecondMeasure)