test accessing
testLastDayNumber
	self assert: (MonthOfYear januaryOf: 2004 asGregorianYear) lastDayNumber = (January , 2004) numberOfDays amount.
	self assert: (MonthOfYear februaryOf: 2004 asGregorianYear) lastDayNumber = (February , 2004) numberOfDays amount.
	self assert: (MonthOfYear februaryOf: 2005 asGregorianYear) lastDayNumber = (February , 2005) numberOfDays amount.
	self assert: (MonthOfYear marchOf: 2004 asGregorianYear) lastDayNumber = (March , 2004) numberOfDays amount.
	self assert: (MonthOfYear aprilOf: 2004 asGregorianYear) lastDayNumber = (April , 2004) numberOfDays amount.
	self assert: (MonthOfYear mayOf: 2004 asGregorianYear) lastDayNumber = (May , 2004) numberOfDays amount.
	self assert: (MonthOfYear juneOf: 2004 asGregorianYear) lastDayNumber = (June , 2004) numberOfDays amount.
	self assert: (MonthOfYear julyOf: 2004 asGregorianYear) lastDayNumber = (July , 2004) numberOfDays amount.
	self assert: (MonthOfYear augustOf: 2004 asGregorianYear) lastDayNumber = (August , 2004) numberOfDays amount.
	self assert: (MonthOfYear septemberOf: 2004 asGregorianYear) lastDayNumber = (September , 2004) numberOfDays amount.
	self assert: (MonthOfYear octoberOf: 2004 asGregorianYear) lastDayNumber = (October , 2004) numberOfDays amount.
	self assert: (MonthOfYear novemberOf: 2004 asGregorianYear) lastDayNumber = (November , 2004) numberOfDays amount.
	self assert: (MonthOfYear decemberOf: 2004 asGregorianYear) lastDayNumber = (December , 2004) numberOfDays amount