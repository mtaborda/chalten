test date creation
testDateOfYear
	self
		assert:
			(Nisan first ofYear: 5767 asHebrewYear)
				=
					(FixedDate
						yearNumber: 5767
						monthNumber: 1
						dayNumber: 1
						calendar: calendar)