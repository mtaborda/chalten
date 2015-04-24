test converting
testAsJulianDate

	self assert: (JulianJanuary fourteenth, 2005) = (January twentyseventh, 2005) asJulian.
	self assert: (JulianMarch fourteenth, 2005) = (March twentyseventh, 2005) asJulian.
	self assert: (JulianSeptember eighteenth, 1999) = (October first, 1999) asJulian.
	self assert: (JulianOctober twentyfifth, 2008) = (November seventh, 2008) asJulian.
	self assert: (JulianDecember fifteenth, 2015) = (December twentyeighth, 2015) asJulian