test querying
testIncludesDateTime
	self assert: (Nisan , 5767 
				includes: (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 1
						calendar: calendar) atMidnight).
	self assert: (Nisan , 5767 
				includes: (FixedDate 
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 30
						calendar: calendar) atLastTimeOfDay).
	self deny: (Nisan , 5767 
				includes: (FixedDate 
						yearNumber: 5767
						monthNumber: 2
						dayNumber: 1
						calendar: calendar) atMidnight).
	self deny: (Nisan , 5767 
				includes: (FixedDate 
						yearNumber: 5768
						monthNumber: 12
						dayNumber: 29
						calendar: calendar) atLastTimeOfDay)