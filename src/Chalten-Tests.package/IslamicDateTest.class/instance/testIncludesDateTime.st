test includes
testIncludesDateTime

	self assert: (Muharram first, 1428 includes: (Muharram first, 1428) atMidnight).
	self assert: (Muharram first, 1428 includes: (Muharram first, 1428) atLastTimeOfDay).

	self deny: (Muharram first, 1428 includes: (Safar first, 1428) atMidnight).
	self deny: (Muharram first, 1428 includes: (DhuAlHijja thirtieth, 1428) atLastTimeOfDay)