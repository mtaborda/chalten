test month of year
testMonthsOfYearsAccessing

	| currentYear |

	currentYear := calendar currentYear.
	self assert: currentYear muharram = (Muharram ofYear: currentYear).
	self assert: currentYear safar = (Safar ofYear: currentYear).
	self assert: currentYear rabiI = (RabiI ofYear: currentYear).
	self assert: currentYear rabiII = (RabiII ofYear: currentYear).
	self assert: currentYear jumadaI = (JumadaI ofYear: currentYear).
	self assert: currentYear jumadaII = (JumadaII ofYear: currentYear).
	self assert: currentYear rajab = (Rajab ofYear: currentYear).
	self assert: currentYear shaban = (Shaban ofYear: currentYear).
	self assert: currentYear ramadan = (Ramadan ofYear: currentYear).
	self assert: currentYear shawwal = (Shawwal ofYear: currentYear).
	self assert: currentYear dhuAlQada = (DhuAlQada ofYear: currentYear).
	self assert: currentYear dhuAlHijja = (DhuAlHijja ofYear: currentYear)