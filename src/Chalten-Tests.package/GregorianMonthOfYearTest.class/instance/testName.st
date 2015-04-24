test accessing
testName
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) name = 'January'.
	self assert: (MonthOfYear februaryOf: 2004 asGregorianYear) name = 'February'.
	self assert: (MonthOfYear marchOf: 2004 asGregorianYear) name = 'March'.
	self assert: (MonthOfYear aprilOf: 2004 asGregorianYear) name = 'April'.
	self assert: (MonthOfYear mayOf: 2004 asGregorianYear) name = 'May'.
	self assert: (MonthOfYear juneOf: 2004 asGregorianYear) name = 'June'.
	self assert: (MonthOfYear julyOf: 2004 asGregorianYear) name = 'July'.
	self assert: (MonthOfYear augustOf: 2004 asGregorianYear) name = 'August'.
	self assert: (MonthOfYear septemberOf: 2004 asGregorianYear) name = 'September'.
	self assert: (MonthOfYear octoberOf: 2004 asGregorianYear) name = 'October'.
	self assert: (MonthOfYear novemberOf: 2004 asGregorianYear) name = 'November'.
	self assert: (MonthOfYear decemberOf: 2004 asGregorianYear) name = 'December'