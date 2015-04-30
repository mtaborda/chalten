test date creation
testComma
	| muharram |
	muharram := calendar muharram.
	self 
		assert: ((DayOfMonth 
				monthNumber: 1
				dayNumber: 1
				calendar: calendar) , 2005) 
				= (FixedDate 
						yearNumber: 2005
						monthNumber: 1
						dayNumber: 1
						calendar: calendar).
	self 
		assert: (muharram first , 2006) = (FixedDate 
						yearNumber: 2006
						monthNumber: 1
						dayNumber: 1
						calendar: calendar)