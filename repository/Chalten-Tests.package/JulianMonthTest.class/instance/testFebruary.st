test accessing
testFebruary

	self
		assert: february number = 2;
		assert: (calendar monthNamed: february name) = february