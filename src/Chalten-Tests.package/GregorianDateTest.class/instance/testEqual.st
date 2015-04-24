test comparing
testEqual
	self 
		assert: (FixedDate 
				yearNumber: 2007
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) = (January first , 2007).
	self 
		deny: (FixedDate 
				yearNumber: 2007
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) = (January second , 2007)