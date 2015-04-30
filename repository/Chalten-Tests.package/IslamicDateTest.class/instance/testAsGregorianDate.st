test converting
testAsGregorianDate

	self assert: (Muharram first, 1429) asGregorian = (January tenth, 2008).
	self assert: (RabiI first, 1429) asGregorian = (March ninth, 2008).
	self assert: (Ramadan fifth, 1420) asGregorian = (December thirteenth, 1999).
	self assert: (Shawwal twelfth, 1435) asGregorian = (August ninth, 2014).
	self assert: (DhuAlHijja second, 1440) asGregorian = (August fourth, 2019)