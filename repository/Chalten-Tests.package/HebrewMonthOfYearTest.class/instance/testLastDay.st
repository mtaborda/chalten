test accessing
testLastDay
	self assert: (MonthOfYear nisanOf: 5767 asHebrewYear) lastDay = calendar yomRevii.
	self assert: (MonthOfYear adarOf: 5767 asHebrewYear) lastDay = calendar yomSheni.
	self assert: (MonthOfYear adarIIOf: 5768 asHebrewYear) lastDay = calendar yomShabbat