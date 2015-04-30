test date creation
testDateOfYear
	self
		assert:
			(Muharram first ofYear: 2005 asIslamicYear)
				=
					(FixedDate
						yearNumber: 2005
						monthNumber: 1
						dayNumber: 1
						calendar: calendar)