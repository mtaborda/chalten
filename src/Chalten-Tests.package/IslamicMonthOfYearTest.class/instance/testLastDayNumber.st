test accessing
testLastDayNumber
	self
		assert:
			(MonthOfYear muharramOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear muharramOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear safarOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear safarOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear rabiIOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear rabiIOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear rabiIIOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear rabiIIOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear jumadaIOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear jumadaIOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear jumadaIIOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear jumadaIIOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear rajabOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear rajabOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear shabanOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear shabanOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear ramadanOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear ramadanOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear shawwalOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear shawwalOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear dhuAlQadaOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear dhuAlQadaOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear dhuAlHijjaOf: 2004 asIslamicYear) lastDayNumber
				= (MonthOfYear dhuAlHijjaOf: 2004 asIslamicYear) numberOfDays amount.
	self
		assert:
			(MonthOfYear dhuAlHijjaOf: 2003 asIslamicYear) lastDayNumber
				= (MonthOfYear dhuAlHijjaOf: 2003 asIslamicYear) numberOfDays amount