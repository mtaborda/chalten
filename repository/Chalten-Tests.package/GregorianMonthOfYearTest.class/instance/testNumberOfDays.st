test accessing
testNumberOfDays
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) numberOfDays = 31 daysMeasure.
	self assert: (MonthOfYear februaryOf: 2004 asGregorianYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear februaryOf: 2005 asGregorianYear) numberOfDays = 28 daysMeasure.
	self assert: (MonthOfYear marchOf: 2004 asGregorianYear) numberOfDays = 31 daysMeasure.
	self assert: (MonthOfYear aprilOf: 2004 asGregorianYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear mayOf: 2004 asGregorianYear) numberOfDays = 31 daysMeasure.
	self assert: (MonthOfYear juneOf: 2004 asGregorianYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear julyOf: 2004 asGregorianYear) numberOfDays = 31 daysMeasure.
	self assert: (MonthOfYear augustOf: 2004 asGregorianYear) numberOfDays = 31 daysMeasure.
	self assert: (MonthOfYear septemberOf: 2004 asGregorianYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear octoberOf: 2004 asGregorianYear) numberOfDays = 31 daysMeasure.
	self assert: (MonthOfYear novemberOf: 2004 asGregorianYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear decemberOf: 2004 asGregorianYear) numberOfDays = 31 daysMeasure