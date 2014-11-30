test accessing time
testLocalTimeOffset

	self assert: environment localTimeOffset = (environment primOffset // 60)