test enumerating
testNext

	self assert: yomRishon next = yomSheni.
	self assert: yomSheni next = yomShelishi.
	self assert: yomShelishi next = yomRevii.
	self assert: yomRevii next = yomHamishi.
	self assert: yomHamishi next = yomShishi.
	self assert: yomShishi next = yomShabbat.
	self assert: yomShabbat next = yomRishon