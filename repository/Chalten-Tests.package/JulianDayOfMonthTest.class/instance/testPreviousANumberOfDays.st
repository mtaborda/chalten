test enumerating
testPreviousANumberOfDays
	self
		assert:
			((DayOfMonth monthNumber: 12 dayNumber: 31 calendar: calendar) previous: 7 daysMeasure)
				= (DayOfMonth monthNumber: 12 dayNumber: 24 calendar: calendar).
	self
		assert:
			((DayOfMonth monthNumber: 2 dayNumber: 29 calendar: calendar) previous: 7 daysMeasure)
				= (DayOfMonth monthNumber: 2 dayNumber: 22 calendar: calendar).
	self
		assert:
			((DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) previous: -1 dayMeasure)
				= (DayOfMonth monthNumber: 1 dayNumber: 2 calendar: calendar).
	self
		assert:
			((DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) previous: -32 daysMeasure)
				= (DayOfMonth monthNumber: 2 dayNumber: 2 calendar: calendar)