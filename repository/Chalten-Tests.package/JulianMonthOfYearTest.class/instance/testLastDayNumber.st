test accessing
testLastDayNumber
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) lastDayNumber = (JulianJanuary , 2004) numberOfDays amount.
	self assert: (MonthOfYear februaryOf: 2004 asJulianYear) lastDayNumber = (JulianFebruary , 2004) numberOfDays amount.
	self assert: (MonthOfYear februaryOf: 2005 asJulianYear) lastDayNumber = (JulianFebruary , 2005) numberOfDays amount.
	self assert: (MonthOfYear marchOf: 2004 asJulianYear) lastDayNumber = (JulianMarch , 2004) numberOfDays amount.
	self assert: (MonthOfYear aprilOf: 2004 asJulianYear) lastDayNumber = (JulianApril , 2004) numberOfDays amount.
	self assert: (MonthOfYear mayOf: 2004 asJulianYear) lastDayNumber = (JulianMay , 2004) numberOfDays amount.
	self assert: (MonthOfYear juneOf: 2004 asJulianYear) lastDayNumber = (JulianJune , 2004) numberOfDays amount.
	self assert: (MonthOfYear julyOf: 2004 asJulianYear) lastDayNumber = (JulianJuly , 2004) numberOfDays amount.
	self assert: (MonthOfYear augustOf: 2004 asJulianYear) lastDayNumber = (JulianAugust , 2004) numberOfDays amount.
	self
		assert: (MonthOfYear septemberOf: 2004 asJulianYear) lastDayNumber = (JulianSeptember , 2004) numberOfDays amount.
	self assert: (MonthOfYear octoberOf: 2004 asJulianYear) lastDayNumber = (JulianOctober , 2004) numberOfDays amount.
	self assert: (MonthOfYear novemberOf: 2004 asJulianYear) lastDayNumber = (JulianNovember , 2004) numberOfDays amount.
	self assert: (MonthOfYear decemberOf: 2004 asJulianYear) lastDayNumber = (JulianDecember , 2004) numberOfDays amount