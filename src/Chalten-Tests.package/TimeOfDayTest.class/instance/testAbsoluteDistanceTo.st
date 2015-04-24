test querying
testAbsoluteDistanceTo

	self assert:
		((TimeOfDay midnight absoluteDistanceTo: (TimeOfDay hours: 0 minutes: 30 seconds: 0))
			convertTo: TimeUnits minute) = 30 minutesMeasure