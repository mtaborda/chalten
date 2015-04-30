test printing
testPrintString

	self assert: muharram printString = 'Muharram'.
	self assert: safar printString = 'Safar'.
	self assert: rabiI printString = 'Rabi` I (Rabi` al-Awwal)'.
	self assert: rabiII printString = 'Rabi` II (Rabi` al-Ahir)'.
	self assert: jumadaI printString = 'Jumada I (Jumada al-Ula)'.
	self assert: jumadaII printString = 'Jumada II (Jumada al-Ahira)'.
	self assert: rajab printString = 'Rajab'.
	self assert: shaban printString = 'Sha`ban'.
	self assert: ramadan printString = 'Ramadan'.
	self assert: shawwal printString = 'Shawwal'.
	self assert: dhuAlQada printString = 'Dhu al-Qa`da'.
	self assert: dhuAlHijja printString = 'Dhu al-Hijja'