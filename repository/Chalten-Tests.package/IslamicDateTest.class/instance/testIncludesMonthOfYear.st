test includes
testIncludesMonthOfYear

	self
		should: [ Muharram first, 1428 includes: Muharram, 1428 ]
		raise: Exception