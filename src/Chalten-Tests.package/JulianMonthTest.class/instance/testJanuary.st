test accessing
testJanuary

	self
		assert: january number = 1;
		assert: (calendar monthNamed: january name) = january