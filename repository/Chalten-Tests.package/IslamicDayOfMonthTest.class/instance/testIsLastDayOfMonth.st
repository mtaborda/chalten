test querying
testIsLastDayOfMonth

	self assert: Muharram thirtieth isLastDayOfMonth.
	self assert: Safar twentyninth isLastDayOfMonth.
	self assert: RabiII twentyninth isLastDayOfMonth.
	self deny: Muharram twentyninth isLastDayOfMonth.
	self deny: Safar twentyeighth isLastDayOfMonth.
	self deny: RabiI twentyninth isLastDayOfMonth