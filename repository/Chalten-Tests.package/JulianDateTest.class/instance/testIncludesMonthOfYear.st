test includes
testIncludesMonthOfYear

	self
		should: [JulianJanuary first, 2007 includes: JulianJanuary, 2007]
		raise: Exception