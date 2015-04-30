test querying
testIsLastDayOfMonth

	self assert: Nisan thirtieth isLastDayOfMonth.
	self assert: Iyyar twentyninth isLastDayOfMonth.
	self assert: Sivan thirtieth isLastDayOfMonth.
	
	self deny: Nisan twentyninth isLastDayOfMonth.
	self deny: Iyyar twentyeighth isLastDayOfMonth.
	self deny: Sivan twentyninth isLastDayOfMonth