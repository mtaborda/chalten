test queying
testDaysTo
	self assert: (yomSheni distanceTo: yomSheni) = zeroDays.
	self assert: (yomSheni distanceTo: yomShelishi) = oneDay.
	self assert: (yomSheni distanceTo: yomRevii) = twoDays.
	self assert: (yomSheni distanceTo: yomHamishi) = 3 daysMeasure.
	self assert: (yomSheni distanceTo: yomShishi) = 4 daysMeasure.
	self assert: (yomSheni distanceTo: yomShabbat) = 5 daysMeasure.
	self assert: (yomSheni distanceTo: yomRishon) = 6 daysMeasure