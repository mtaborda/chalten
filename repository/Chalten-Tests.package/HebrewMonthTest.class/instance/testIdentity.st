test comparing
testIdentity

	self assert: nisan == nisan.
	self assert: iyyar == iyyar.
	self assert: sivan == sivan.
	self assert: tammuz == tammuz.
	self assert: av == av.
	self assert: elul == elul.
	self assert: tishri == tishri.
	self assert: marheshvan == marheshvan.
	self assert: kislev == kislev.
	self assert: tevet == tevet.
	self assert: shevat == shevat.
	self assert: adarI == adarI.
	self assert: adarII == adarII.

	self deny: nisan == iyyar.
	self deny: iyyar == sivan.
	self deny: sivan == tammuz.
	self deny: tammuz == av.
	self deny: av == elul.
	self deny: elul == tishri.
	self deny: tishri == marheshvan.
	self deny: marheshvan == kislev.
	self deny: kislev == tevet.
	self deny: tevet == shevat.
	self deny: shevat == adarI.
	self deny: adarI == adarII.
	self deny: adarII == nisan