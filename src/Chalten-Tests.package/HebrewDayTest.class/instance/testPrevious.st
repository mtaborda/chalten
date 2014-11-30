test enumerating
testPrevious

	self assert: yomRishon previous = yomShabbat.
	self assert: yomSheni previous = yomRishon.
	self assert: yomShelishi previous = yomSheni.
	self assert: yomRevii previous = yomShelishi.
	self assert: yomHamishi previous = yomRevii.
	self assert: yomShishi previous = yomHamishi.
	self assert: yomShabbat previous = yomShishi