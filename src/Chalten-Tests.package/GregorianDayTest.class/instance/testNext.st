test enumerating
testNext

	self assert: monday next = tuesday.
	self assert: sunday next = monday.
	self assert: saturday next = sunday