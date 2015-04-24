test accessing
testName
	self assert: (MonthOfYear januaryOf: 2004 asJulianYear) name = 'January'.
	self assert: (MonthOfYear februaryOf: 2004 asJulianYear) name = 'February'.
	self assert: (MonthOfYear marchOf: 2004 asJulianYear) name = 'March'.
	self assert: (MonthOfYear aprilOf: 2004 asJulianYear) name = 'April'.
	self assert: (MonthOfYear mayOf: 2004 asJulianYear) name = 'May'.
	self assert: (MonthOfYear juneOf: 2004 asJulianYear) name = 'June'.
	self assert: (MonthOfYear julyOf: 2004 asJulianYear) name = 'July'.
	self assert: (MonthOfYear augustOf: 2004 asJulianYear) name = 'August'.
	self assert: (MonthOfYear septemberOf: 2004 asJulianYear) name = 'September'.
	self assert: (MonthOfYear octoberOf: 2004 asJulianYear) name = 'October'.
	self assert: (MonthOfYear novemberOf: 2004 asJulianYear) name = 'November'.
	self assert: (MonthOfYear decemberOf: 2004 asJulianYear) name = 'December'