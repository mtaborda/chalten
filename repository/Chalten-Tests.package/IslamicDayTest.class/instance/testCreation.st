test instance creation
testCreation
	self shouldnt: 
			[Day 
				named: 'One Islamic Day Name'
				positionInWeek: 1
				calendar: calendar]
		raise: Exception