test accessing
testDaysTo

	self assert: (relativeDate distanceTo: January first, 2004) = (absoluteDate distanceTo: January first, 2004)