test accessing
testDay

	self assert: (October first, 2007) day = calendar monday.
	self assert: (October second, 2007) day = calendar tuesday.
	self assert: (October third, 2007) day = calendar wednesday.
	self assert: (October fourth, 2007) day = calendar thursday.
	self assert: (October fifth, 2007) day = calendar friday.
	self assert: (October sixth, 2007) day = calendar saturday.
	self assert: (October seventh, 2007) day = calendar sunday.
	self assert: (October eighth, 2007) day = calendar monday