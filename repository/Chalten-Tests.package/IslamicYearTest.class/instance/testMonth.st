test month of year creation
testMonth

	| year |
	year := 1535 asIslamicYear.
	self assert: Muharram, 1535 = (year month: Muharram)