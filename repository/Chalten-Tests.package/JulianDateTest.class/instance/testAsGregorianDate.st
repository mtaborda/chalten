test converting
testAsGregorianDate

	self assert: (JulianJanuary fourteenth, 2005) asGregorian = (January twentyseventh, 2005).
	self assert: (JulianMarch fourteenth, 2005) asGregorian = (March twentyseventh, 2005).
	self assert: (JulianSeptember eighteenth, 1999) asGregorian = (October first, 1999).
	self assert: (JulianOctober twentyfifth, 2008) asGregorian = (November seventh, 2008).
	self assert: (JulianDecember fifteenth, 2015) asGregorian = (December twentyeighth, 2015)