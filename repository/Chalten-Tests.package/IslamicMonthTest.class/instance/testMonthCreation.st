test creation
testMonthCreation

	| otherMuharram otherSafar otheRabiI otherRabiII otherJumadaI otherJumadaII otherRajab otherShaban
	  otherRamadan ohterShawwal otherDhuAlQada otherDhuAlHijja |

	otherMuharram := calendar createMuharram.
	otherSafar := calendar createSafar.
	otheRabiI := calendar createRabiI.
	otherRabiII := calendar createRabiII.
	otherJumadaI := calendar createJumadaI.
	otherJumadaII := calendar createJumadaII.
	otherRajab := calendar createRajab.
	otherShaban := calendar createShaban.
	otherRamadan := calendar createRamadan.
	ohterShawwal := calendar createShawwal.
	otherDhuAlQada := calendar createDhuAlQada.
	otherDhuAlHijja := calendar createDhuAlHijja.

	self assert: muharram name = otherMuharram name.
	self assert: muharram number = otherMuharram number.
	self assert: safar name = otherSafar name.
	self assert: safar number = otherSafar number.
	self assert: rabiI name = otheRabiI name.
	self assert: rabiI number = otheRabiI number.
	self assert: rabiII name = otherRabiII name.
	self assert: rabiII number = otherRabiII number.
	self assert: jumadaI name = otherJumadaI name.
	self assert: jumadaI number = otherJumadaI number.
	self assert: jumadaII name = otherJumadaII name.
	self assert: jumadaII number = otherJumadaII number.
	self assert: rajab name = otherRajab name.
	self assert: rajab number = otherRajab number.
	self assert: shaban name = otherShaban name.
	self assert: shaban number = otherShaban number.
	self assert: ramadan name = otherRamadan name.
	self assert: ramadan number = otherRamadan number.
	self assert: shawwal name = ohterShawwal name.
	self assert: shawwal number = ohterShawwal number.
	self assert: dhuAlQada name = otherDhuAlQada name.
	self assert: dhuAlQada number = otherDhuAlQada number.
	self assert: dhuAlHijja name = otherDhuAlHijja name.
	self assert: dhuAlHijja number = otherDhuAlHijja number