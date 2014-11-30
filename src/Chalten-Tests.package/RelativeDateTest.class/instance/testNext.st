test enumerating
testNext

	self assert: relativeDate next = absoluteDate next.
	self assert: (relativeDate next: twoDays) = (absoluteDate next: twoDays)