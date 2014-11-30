test date creation
testComma
	| january |
	january := calendar january.
	self 
		assert: ((DayOfMonth 
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) , 2005) 
				= (JulianJanuary first , 2005).
	self 
		assert: (january first , 2006) = (FixedDate 
						yearNumber: 2006
						monthNumber: 1
						dayNumber: 1
						calendar: calendar)