test enumerating
testNextInANumberOfDays
	self assert: (yomSheni next: oneDay) = yomShelishi.
	self assert: (yomSheni next: twoDays) = yomRevii.
	self assert: (yomSheni next: 6 daysMeasure) = yomRishon.
	self assert: (yomSheni next: sevenDays) = yomSheni.
	self assert: (yomSheni next: 14 daysMeasure) = yomSheni.
	self assert: (yomRishon next: 21 daysMeasure) = yomRishon