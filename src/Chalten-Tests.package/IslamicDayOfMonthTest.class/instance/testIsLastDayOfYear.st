test querying
testIsLastDayOfYear

	self assert: DhuAlHijja thirtieth isLastDayOfYear.
	self deny: DhuAlHijja twentyninth isLastDayOfYear.
	self deny: DhuAlQada thirtieth isLastDayOfYear