initialization
initializeMonths
	"There are 12 islamic months, wich contain, alternately, 29 or 30 days:
		(1) Muharram 						30 days
		(2) Safar 							29 days
		(3) Rabi` I (Rabi` al-Awwal) 		30 days
		(4) Rabi` II (Rabi` al-Ahir) 			29 days
		(5) Jumada I (Jumada al-Ula) 		30 days
		(6) Jumada II (Jumada al-Ahira) 	29 days
		(7) Rajab 							30 days
		(8) Sha`ban 						29 days
		(9) Ramadan 						30 days
		(10) Shawwal 						29 days
		(11) Dhu al-Qa`da 					30 days
		(12) Dhu al-Hijja 					29 {30} days
	The leap-year structure is given in curly brackets; the last month, Dhu al-Hijja, contains 30 days in years
	2, 5, 7, 10, 13, 16, 18, 21, 24, 26 and 29 of a 30-year cycle.
	- Extracted from 'Calendrical Calculations, The Millennium Edition'; page 88."
	
	months := Array new: self amountOfMonthsPerYear.
	self addMonth: self createMuharram.
	self addMonth: self createSafar.
	self addMonth: self createRabiI.
	self addMonth: self createRabiII.
	self addMonth: self createJumadaI.
	self addMonth: self createJumadaII.
	self addMonth: self createRajab.
	self addMonth: self createShaban.
	self addMonth: self createRamadan.
	self addMonth: self createShawwal.
	self addMonth: self createDhuAlQada.
	self addMonth: self createDhuAlHijja