test accessing
testMarch

	self
		assert: march number = 3;
		assert: (calendar monthNamed: march name) = march