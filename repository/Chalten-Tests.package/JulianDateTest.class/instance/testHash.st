test comparing
testHash
	self assert: (JulianJanuary first , 2007) hash 
				= (FixedDate 
						yearNumber: 2007
						monthNumber: 1
						dayNumber: 1
						calendar: calendar) hash