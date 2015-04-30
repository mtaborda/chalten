test includes
testIncludesDateTime

	self assert: (January first, 2007 includes: (January first, 2007) atMidnight).
	self assert: (January first, 2007 includes: (January first, 2007) atLastTimeOfDay).

	self deny: (January first, 2007 includes: (February first, 2007) atMidnight).
	self deny: (January first, 2007 includes: (December thirtyfirst, 2006) atLastTimeOfDay)