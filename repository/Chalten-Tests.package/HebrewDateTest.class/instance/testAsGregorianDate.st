test converting
testAsGregorianDate

	self assert: (Nisan first, 5767) asGregorian = (March twentieth, 2007).
	self assert: (Sivan first, 5768) asGregorian = (June fourth, 2008).
	self assert: (Kislev fifth, 5768) asGregorian = (November fifteenth, 2007).
	self assert: (Shevat twelfth, 5772) asGregorian = (February fifth, 2012).
	self assert: (Elul second, 5775) asGregorian = (August seventeenth, 2015)