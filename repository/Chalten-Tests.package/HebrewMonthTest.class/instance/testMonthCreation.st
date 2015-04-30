test creation
testMonthCreation

	| otherNisan otherIyyar otheSivan otherTammuz otherAv otherElul otherTishri otherMarheshvan
	  otherKislev ohterTevet otherShevat otherAdarI otherAdarII |

	otherNisan := calendar createNisan.
	otherIyyar := calendar createIyyar.
	otheSivan := calendar createSivan.
	otherTammuz := calendar createTammuz.
	otherAv := calendar createAv.
	otherElul := calendar createElul.
	otherTishri := calendar createTishri.
	otherMarheshvan := calendar createMarheshvan.
	otherKislev := calendar createKislev.
	ohterTevet := calendar createTevet.
	otherShevat := calendar createShevat.
	otherAdarI := calendar createAdarI.
	otherAdarII := calendar createAdarII.

	self assert: nisan name = otherNisan name.
	self assert: nisan number = otherNisan number.
	self assert: iyyar name = otherIyyar name.
	self assert: iyyar number = otherIyyar number.
	self assert: sivan name = otheSivan name.
	self assert: sivan number = otheSivan number.
	self assert: tammuz name = otherTammuz name.
	self assert: tammuz number = otherTammuz number.
	self assert: av name = otherAv name.
	self assert: av number = otherAv number.
	self assert: elul name = otherElul name.
	self assert: elul number = otherElul number.
	self assert: tishri name = otherTishri name.
	self assert: tishri number = otherTishri number.
	self assert: marheshvan name = otherMarheshvan name.
	self assert: marheshvan number = otherMarheshvan number.
	self assert: kislev name = otherKislev name.
	self assert: kislev number = otherKislev number.
	self assert: tevet name = ohterTevet name.
	self assert: tevet number = ohterTevet number.
	self assert: shevat name = otherShevat name.
	self assert: shevat number = otherShevat number.
	self assert: adarI name = otherAdarI name.
	self assert: adarI number = otherAdarI number.
	self assert: adarII name = otherAdarII name.
	self assert: adarII number = otherAdarII number