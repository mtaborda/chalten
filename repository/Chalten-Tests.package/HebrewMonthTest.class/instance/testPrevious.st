test enumerating
testPrevious

	self assert: nisan previous = adar.
	self assert: iyyar previous = nisan.
	self assert: sivan previous = iyyar.
	self assert: tammuz previous = sivan.
	self assert: av previous = tammuz.
	self assert: elul previous = av.
	self assert: tishri previous = elul.
	self assert: marheshvan previous = tishri.
	self assert: kislev previous = marheshvan.
	self assert: tevet previous = kislev.
	self assert: shevat previous = tevet.
	self assert: adar previous = shevat