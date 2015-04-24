test accessing
testDaysFrom

	self assert: (relativeDate distanceFrom: January first, 2004) = (absoluteDate distanceFrom: January first, 2004)