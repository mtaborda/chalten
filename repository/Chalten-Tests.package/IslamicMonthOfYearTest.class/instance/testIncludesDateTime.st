test querying
testIncludesDateTime
	self assert: (Muharram , 2005 
				includes: (FixedDate 
						yearNumber: 2005
						monthNumber: 1
						dayNumber: 1
						calendar: calendar) atMidnight).
	self assert: (Muharram , 2005 
				includes: (FixedDate 
						yearNumber: 2005
						monthNumber: 1
						dayNumber: 30
						calendar: calendar) atLastTimeOfDay).
	self deny: (Muharram , 2005 
				includes: (FixedDate 
						yearNumber: 2005
						monthNumber: 2
						dayNumber: 1
						calendar: calendar) atMidnight).
	self deny: (Muharram , 2005 
				includes: (FixedDate 
						yearNumber: 2004
						monthNumber: 12
						dayNumber: 30
						calendar: calendar) atLastTimeOfDay)