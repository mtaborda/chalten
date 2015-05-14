test instance creation
testCreation
	self assert: (MonthOfYear yearNumber: 2004 monthNumber: 1 calendar: calendar) year = 2004 asIslamicYear.
	self assert: (MonthOfYear yearNumber: 2004 monthNumber: 1 calendar: calendar) monthNumber = 1.
	self assert: (MonthOfYear yearNumber: 2004 month: calendar muharram) year = 2004 asIslamicYear.
	self assert: (MonthOfYear yearNumber: 2004 month: calendar muharram) monthNumber = 1.
	self assert: (MonthOfYear year: 2004 asIslamicYear monthNumber: 1) year = 2004 asIslamicYear.
	self assert: (MonthOfYear year: 2004 asIslamicYear monthNumber: 1) monthNumber = 1.
	self assert: (MonthOfYear muharramOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear muharramOf: 2004 asIslamicYear) monthNumber = 1.
	self assert: (MonthOfYear safarOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear safarOf: 2004 asIslamicYear) monthNumber = 2.
	self assert: (MonthOfYear rabiIOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear rabiIOf: 2004 asIslamicYear) monthNumber = 3.
	self assert: (MonthOfYear rabiIIOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear rabiIIOf: 2004 asIslamicYear) monthNumber = 4.
	self assert: (MonthOfYear jumadaIOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear jumadaIOf: 2004 asIslamicYear) monthNumber = 5.
	self assert: (MonthOfYear jumadaIIOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear jumadaIIOf: 2004 asIslamicYear) monthNumber = 6.
	self assert: (MonthOfYear rajabOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear rajabOf: 2004 asIslamicYear) monthNumber = 7.
	self assert: (MonthOfYear shabanOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear shabanOf: 2004 asIslamicYear) monthNumber = 8.
	self assert: (MonthOfYear ramadanOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear ramadanOf: 2004 asIslamicYear) monthNumber = 9.
	self assert: (MonthOfYear shawwalOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear shawwalOf: 2004 asIslamicYear) monthNumber = 10.
	self assert: (MonthOfYear dhuAlQadaOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear dhuAlQadaOf: 2004 asIslamicYear) monthNumber = 11.
	self assert: (MonthOfYear dhuAlHijjaOf: 2004 asIslamicYear) year = 2004 asIslamicYear.
	self assert: (MonthOfYear dhuAlHijjaOf: 2004 asIslamicYear) monthNumber = 12