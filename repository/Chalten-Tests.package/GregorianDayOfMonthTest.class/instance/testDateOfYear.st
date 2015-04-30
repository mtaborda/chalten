test date creation
testDateOfYear
	self
		assert:
			((DayOfMonth monthNumber: 1 dayNumber: 1 calendar: calendar) ofYear: 2005 asGregorianYear) = (January first , 2005)