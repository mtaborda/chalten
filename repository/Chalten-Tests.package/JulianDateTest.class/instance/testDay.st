test accessing
testDay

	self assert: (JulianOctober first, 2007) day = calendar sunday.
	self assert: (JulianOctober second, 2007) day = calendar monday.
	self assert: (JulianOctober third, 2007) day = calendar tuesday.
	self assert: (JulianOctober fourth, 2007) day = calendar wednesday.
	self assert: (JulianOctober fifth, 2007) day = calendar thursday.
	self assert: (JulianOctober sixth, 2007) day = calendar friday.
	self assert: (JulianOctober seventh, 2007) day = calendar saturday.
	self assert: (JulianOctober eighth, 2007) day = calendar sunday