test accessing
testDay

	self assert: (Tishri first, 5767) day = YomShabbat.
	self assert: (Tishri second, 5767) day = YomRishon.
	self assert: (Tishri third, 5767) day = YomSheni.
	self assert: (Tishri fourth, 5767) day = YomShelishi.
	self assert: (Tishri fifth, 5767) day = YomRevii.
	self assert: (Tishri sixth, 5767) day = YomHamishi.
	self assert: (Tishri seventh, 5767) day = YomShishi.
	self assert: (Tishri eighth, 5767) day = YomShabbat