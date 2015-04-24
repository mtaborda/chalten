test comparing
testEqual
	self 
		assert: (Nisan first , 5767) = (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 1
						calendar: calendar).
	self 
		deny: (Nisan first , 5767) = (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 2
						calendar: calendar)