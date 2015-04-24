test querying
testNextANumberOfMonths
	self assert: (JulianJanuary , 2004 next: oneMonth) = (JulianFebruary , 2004).
	self assert: (JulianJanuary , 2004 next: elevenMonths) = (JulianDecember , 2004).
	self assert: (JulianJanuary , 2004 next: twelveMonths) = (JulianJanuary , 2005).
	self assert: (JulianJanuary , 2004 next: thirteenMonths) = (JulianFebruary , 2005).
	self assert: (JulianJanuary , 2004 next: zeroMonths) = (JulianJanuary , 2004).
	self assert: (JulianJanuary , 2004 next: oneYear) = (JulianJanuary , 2005).
	self assert: (JulianApril , 2004 next: oneYear) = (JulianApril , 2005).
	self assert: (JulianJanuary , 2004 next: 0.5 monthsMeasure) = (JulianJanuary , 2004).
	self assert: (JulianJanuary , 2004 next: 1.5 monthsMeasure) = (JulianFebruary , 2004)