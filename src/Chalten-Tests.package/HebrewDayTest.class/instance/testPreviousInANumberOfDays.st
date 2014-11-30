test enumerating
testPreviousInANumberOfDays
	self assert: (yomSheni previous: oneDay) = yomRishon.
	self assert: (yomSheni previous: twoDays) = yomShabbat.
	self assert: (yomSheni previous: 6 daysMeasure) = yomShelishi.
	self assert: (yomSheni previous: sevenDays) = yomSheni.
	self assert: (yomRishon previous: 6 daysMeasure) = yomSheni.
	self assert: (yomRishon previous: 7 daysMeasure) = yomRishon.
	self assert: (yomRishon previous: 14 daysMeasure) = yomRishon.
	self assert: (yomShabbat previous: 6 daysMeasure) = yomRishon.
	self assert: (yomShabbat previous: 7 daysMeasure) = yomShabbat.
	self assert: (yomShabbat previous: 14 daysMeasure) = yomShabbat