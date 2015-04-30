test accessing
testDates
	self
		assert:
			(MonthOfYear nisanOf: 5767 asHebrewYear) dates first
				=
					(FixedDate
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 1
						calendar: calendar).
	self
		assert:
			(MonthOfYear nisanOf: 5767 asHebrewYear) dates last
				=
					(FixedDate
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 30
						calendar: calendar)