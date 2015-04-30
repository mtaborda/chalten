test querying
testPrevious

	self assert: (JulianJanuary, 2004) previous = (JulianDecember, 2003).
	self assert: (JulianDecember, 2004) previous = (JulianNovember, 2004)