test enumerating
testPrevious

	self assert: relativeDate previous = absoluteDate previous.
	self assert: (relativeDate previous: twoDays) = (absoluteDate previous: twoDays)