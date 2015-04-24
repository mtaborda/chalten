test querying
testIncludesDate
	self 
		assert: (Nisan , 5767 includes: (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 1
						calendar: calendar)).
	self 
		assert: (Nisan , 5767 includes: (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 30
						calendar: calendar)).
	self 
		deny: (Nisan , 5767 includes: (FixedDate 
						yearNumber: 5767
						monthNumber: 2
						dayNumber: 1
						calendar: calendar)).
	self 
		deny: (Nisan , 5767 includes: (FixedDate 
						yearNumber: 5768
						monthNumber: 12
						dayNumber: 29
						calendar: calendar))