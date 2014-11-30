test accessing
testDates
	self
		assert:
			(MonthOfYear muharramOf: 2004 asIslamicYear) dates first
				=
					(FixedDate
						yearNumber: 2004
						monthNumber: 1
						dayNumber: 1
						calendar: calendar).
	self
		assert:
			(MonthOfYear muharramOf: 2004 asIslamicYear) dates last
				=
					(FixedDate
						yearNumber: 2004
						monthNumber: 1
						dayNumber: 30
						calendar: calendar)