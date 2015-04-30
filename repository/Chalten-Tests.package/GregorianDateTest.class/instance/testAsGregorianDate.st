test converting
testAsGregorianDate

	self assert: (January fourteenth , 2005) asGregorian = (January fourteenth , 2005).
	self assert: (March fourteenth , 2005) asGregorian = (March fourteenth , 2005).
	self assert: (September eighteenth , 1999) asGregorian = (September eighteenth , 1999).
	self assert: (October twentyfifth , 2008) asGregorian = (October twentyfifth , 2008).
	self assert: (December fifteenth , 2015) asGregorian = (December fifteenth , 2015)