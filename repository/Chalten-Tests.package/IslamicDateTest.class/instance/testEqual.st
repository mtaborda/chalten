test comparing
testEqual
	self 
		assert: (Muharram first , 1428) = (FixedDate 
						yearNumber: 1428
						monthNumber: 1
						dayNumber: 1
						calendar: calendar).
	self 
		deny: (Muharram first , 1) = (FixedDate 
						yearNumber: 1428
						monthNumber: 1
						dayNumber: 2
						calendar: calendar)