test accessing
testLastTimeOfDay
	self
		assert:
			TimeOfDay lastTimeOfDay
				= (TimeOfDay timeFromMidnight: 23 hoursMeasure + 59 minutesMeasure + 59 secondsMeasure + 999 millisecondsMeasure)