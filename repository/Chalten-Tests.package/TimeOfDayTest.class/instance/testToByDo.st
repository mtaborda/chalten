test interval protocol
testToByDo
	| interval hour |
	interval := TimeOfDay firstTimeOfDay to: TimeOfDay lastTimeOfDay by: 1 hourMeasure.
	hour := 0.
	interval
		do: [ :aTimeOfDay | 
			self assert: aTimeOfDay = (TimeOfDay hours: hour).
			hour := hour + 1 ].
	self assert: hour = 24