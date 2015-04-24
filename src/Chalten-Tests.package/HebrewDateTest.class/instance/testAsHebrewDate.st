test converting
testAsHebrewDate

	self assert: (Nisan first, 5767) = (March twentieth, 2007) asHebrew.
	self assert: (Sivan first, 5768) = (June fourth, 2008) asHebrew.
	self assert: (Kislev fifth, 5768) = (November fifteenth, 2007) asHebrew.
	self assert: (Shevat twelfth, 5772) = (February fifth, 2012) asHebrew.
	self assert: (Elul second, 5775) = (August seventeenth, 2015) asHebrew