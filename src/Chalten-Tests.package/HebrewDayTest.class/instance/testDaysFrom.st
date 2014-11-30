test queying
testDaysFrom
	self assert: (yomSheni distanceFrom: yomSheni) = zeroDays.
	self assert: (yomSheni distanceFrom: yomShelishi) = 6 daysMeasure.
	self assert: (yomSheni distanceFrom: yomRevii) = 5 daysMeasure.
	self assert: (yomSheni distanceFrom: yomHamishi) = 4 daysMeasure.
	self assert: (yomSheni distanceFrom: yomShishi) = 3 daysMeasure.
	self assert: (yomSheni distanceFrom: yomShabbat) = twoDays.
	self assert: (yomSheni distanceFrom: yomRishon) = oneDay