test month of year creation
testMonth

	| year |
	year := 5775 asHebrewYear.
	self assert: Av, 5775 = (year month: Av)