test includes
testIncludesMonthOfYear

	self
		should: [ Nisan first, 5767 includes: Nisan, 5767 ]
		raise: Exception