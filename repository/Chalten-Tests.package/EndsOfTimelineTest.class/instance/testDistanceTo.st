test querying
testDistanceTo

	self assert: (TheBeginningOfTime distanceTo: (TimeOfDay hours: 1 minutes: 0 seconds: 0)) = Infinity daysMeasure.
	self assert: (TheEndOfTime distanceTo: (TimeOfDay hours: 1 minutes: 0 seconds: 0)) = Infinity daysMeasure