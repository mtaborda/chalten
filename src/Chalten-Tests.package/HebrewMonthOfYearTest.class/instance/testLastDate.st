test accessing
testLastDate
	self assert: (MonthOfYear nisanOf: 5767 asHebrewYear) lastDate = (Nisan thirtieth , 5767).
	self assert: (MonthOfYear adarOf: 5767 asHebrewYear) lastDate = (Adar twentyninth , 5767).
	self assert: (MonthOfYear adarIIOf: 5768 asHebrewYear) lastDate = (AdarII twentyninth , 5768)