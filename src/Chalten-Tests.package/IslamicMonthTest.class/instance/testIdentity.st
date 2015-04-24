test comparing
testIdentity

	self assert: muharram == muharram.
	self assert: safar == safar.
	self assert: rabiI == rabiI.
	self assert: rabiII == rabiII.
	self assert: jumadaI == jumadaI.
	self assert: jumadaII == jumadaII.
	self assert: rajab == rajab.
	self assert: shaban == shaban.
	self assert: ramadan == ramadan.
	self assert: shawwal == shawwal.
	self assert: dhuAlQada == dhuAlQada.
	self assert: dhuAlHijja == dhuAlHijja.

	self deny: muharram == safar.
	self deny: safar == rabiI.
	self deny: rabiI == rabiII.
	self deny: rabiII == rabiI.
	self deny: jumadaI == jumadaII.
	self deny: jumadaII == jumadaI.
	self deny: rajab == shaban.
	self deny: shaban == ramadan.
	self deny: ramadan == dhuAlQada.
	self deny: shawwal == ramadan.
	self deny: dhuAlQada == dhuAlHijja.
	self deny: dhuAlHijja == dhuAlQada