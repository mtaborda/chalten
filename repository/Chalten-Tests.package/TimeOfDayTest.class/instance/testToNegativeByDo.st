test interval protocol
testToNegativeByDo
	| interval time |
	interval := (TimeOfDay hours: 23 minutes: 30) to: TimeOfDay firstTimeOfDay by: -30 minutesMeasure.
	time := 23 hoursMeasure + 30 minutesMeasure.
	interval
		do: [ :aTimeOfDay | 
			self assert: aTimeOfDay = (TimeOfDay timeFromMidnight: time).
			time := time - 30 minutesMeasure ].
	self assert: time = -30 minutesMeasure