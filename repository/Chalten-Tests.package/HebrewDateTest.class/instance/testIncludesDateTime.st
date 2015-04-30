test includes
testIncludesDateTime

	self assert: (Nisan first, 5767 includes: (Nisan first, 5767) atMidnight).
	self assert: (Nisan first, 5767 includes: (Nisan first, 5767) atLastTimeOfDay).

	self deny: (Nisan first, 5767 includes: (Iyyar first, 5767) atMidnight).
	self deny: (Nisan first, 5767 includes: (Adar twentieth, 5767) atLastTimeOfDay)