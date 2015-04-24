test comparing
testGreaterThan

	self assert: (January first, 2004) > relativeDate = ((January first, 2004) > absoluteDate).
	self assert: (January tenth, 2004) > relativeDate = ((January tenth, 2004) > absoluteDate)