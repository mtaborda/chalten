test comparing
testLessThan

	self assert: relativeDate < (January first, 2004) = (absoluteDate < (January first, 2004)).
	self assert: relativeDate < (January tenth, 2004) = (absoluteDate < (January tenth, 2004))