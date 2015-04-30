test accessing
testName
	self assert: (MonthOfYear muharramOf: 2004 asIslamicYear) name = 'Muharram'.
	self assert: (MonthOfYear safarOf: 2004 asIslamicYear) name = 'Safar'.
	self assert: (MonthOfYear rabiIOf: 2004 asIslamicYear) name = 'Rabi` I (Rabi` al-Awwal)'.
	self assert: (MonthOfYear rabiIIOf: 2004 asIslamicYear) name = 'Rabi` II (Rabi` al-Ahir)'.
	self assert: (MonthOfYear jumadaIOf: 2004 asIslamicYear) name = 'Jumada I (Jumada al-Ula)'.
	self assert: (MonthOfYear jumadaIIOf: 2004 asIslamicYear) name = 'Jumada II (Jumada al-Ahira)'.
	self assert: (MonthOfYear rajabOf: 2004 asIslamicYear) name = 'Rajab'.
	self assert: (MonthOfYear shabanOf: 2004 asIslamicYear) name = 'Sha`ban'.
	self assert: (MonthOfYear ramadanOf: 2004 asIslamicYear) name = 'Ramadan'.
	self assert: (MonthOfYear shawwalOf: 2004 asIslamicYear) name = 'Shawwal'.
	self assert: (MonthOfYear dhuAlQadaOf: 2004 asIslamicYear) name = 'Dhu al-Qa`da'.
	self assert: (MonthOfYear dhuAlHijjaOf: 2004 asIslamicYear) name = 'Dhu al-Hijja'