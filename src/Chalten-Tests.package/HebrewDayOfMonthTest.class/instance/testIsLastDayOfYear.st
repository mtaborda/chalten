test querying
testIsLastDayOfYear

	self assert: Elul twentyninth isLastDayOfYear.
	self deny: Elul twentyeighth isLastDayOfYear.
	self deny: AdarI thirtieth isLastDayOfYear