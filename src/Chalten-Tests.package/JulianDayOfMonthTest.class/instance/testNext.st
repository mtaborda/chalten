test enumerating
testNext

	self assert: JulianDecember thirtyfirst next = JulianJanuary first.
	self assert: JulianFebruary twentyeighth next = JulianMarch first