test accessing
testOffset

	self assert: buenosAiresTimeZone offset = (Offset of: -3).
	self assert: universalTimeZone offset = (Offset of: 0)