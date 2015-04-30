initialization
initializeDays
	"Days begins at sunset. The week begins on yaum al-ahad; wich is sunday in gregorian calendar. The days Sunday-Thursday are numbered, not named:
		Sunday 	yaum al-ahad (the first day)
		Monday 	yaum al-ithnayna (the second day)
		Tuesday 	yaum ath-thalatha (the third day)
		Wednesday 	yaum al-arba`a` (the fourth day)
		Thursday 	yaum al-hamis (the fifth day)
		Friday 		yaum al-jum`a (the day of assembly)
		Saturday 	yaum as-sabt (the sabbath day)
	- Extracted from 'Calendrical Calculations, The Millennium Edition'; page 87."
	
	days := Array new: self amountOfDaysPerWeek.
	self addDay: self createYaumAlAhad.
	self addDay: self createYaumAlIthnayna.
	self addDay: self createYaumAthThalatha.
	self addDay: self createYaumAlArbaa.
	self addDay: self createYaumAlHamis.
	self addDay: self createYaumAlJuma.
	self addDay: self createYaumAsSabt