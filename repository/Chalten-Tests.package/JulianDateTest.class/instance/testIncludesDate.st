test includes
testIncludesDate

	self
		should: [JulianJanuary first, 2007 includes: JulianJanuary first, 2007]
		raise: Exception