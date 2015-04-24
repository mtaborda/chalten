test comparing
testHash
	self assert: (Muharram first , 1428) hash 
				= (FixedDate 
						yearNumber: 1428
						monthNumber: 1
						dayNumber: 1
						calendar: calendar) hash.
	self deny: (Muharram first , 1) hash 
				= (FixedDate 
						yearNumber: 1428
						monthNumber: 1
						dayNumber: 2
						calendar: calendar) hash