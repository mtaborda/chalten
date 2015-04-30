test comparing
testHash
	self assert: (Nisan first , 5767) hash 
				= (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 1
						calendar: calendar) hash.
	self deny: (Nisan first , 5767) hash 
				= (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 2
						calendar: calendar) hash