test comparing
testEqual
	self 
		assert: (FixedDate 
				yearNumber: 2007
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) = (JulianJanuary first , 2007).
	self 
		deny: (FixedDate 
				yearNumber: 2007
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) = (JulianJanuary second , 2007)