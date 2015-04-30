test accessing
testNumberOfDays
	self assert: (MonthOfYear muharramOf: 2004 asIslamicYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear safarOf: 2004 asIslamicYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear rabiIOf: 2004 asIslamicYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear rabiIIOf: 2004 asIslamicYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear jumadaIOf: 2004 asIslamicYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear jumadaIIOf: 2004 asIslamicYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear rajabOf: 2004 asIslamicYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear shabanOf: 2004 asIslamicYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear ramadanOf: 2004 asIslamicYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear shawwalOf: 2004 asIslamicYear) numberOfDays = 29 daysMeasure.
	self assert: (MonthOfYear dhuAlQadaOf: 2004 asIslamicYear) numberOfDays = 30 daysMeasure.
	self assert: (MonthOfYear dhuAlHijjaOf: 2004 asIslamicYear) numberOfDays = 30 daysMeasure