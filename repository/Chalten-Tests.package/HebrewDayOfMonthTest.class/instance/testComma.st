test date creation
testComma
	| nisan |
	nisan := calendar nisan.
	self 
		assert: ((DayOfMonth 
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) , 5767) 
				= (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 1
						calendar: calendar).
	self 
		assert: (nisan first , 5767) = (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 1
						calendar: calendar)