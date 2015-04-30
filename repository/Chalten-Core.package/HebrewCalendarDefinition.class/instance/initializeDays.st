initialization
initializeDays
	"Days begins at sunset. The week begins on yom rishon; wich is sunday in gregorian calendar. The days Sunday-Friday are numbered, not named:
		Sunday 	yom rishon (the first day)
		Monday 	yom sheni (the second day)
		Tuesday 	yom shelishi (the third day)
		Wednesday 	yon revi`i (the fourth day)
		Thursday 	yom hamishi (the fifth day)
		Friday 		yom shishi (the day of assembly)
		Saturday 	yom shabbat (the sabbath day)
	- Extracted from 'Calendrical Calculations, The Millennium Edition'; page 95."
	
	days := Array new: self amountOfDaysPerWeek.
	self addDay: self createYomRishon.
	self addDay: self createYomSheni.
	self addDay: self createYomShelishi.
	self addDay: self createYomRevii.
	self addDay: self createYomHamishi.
	self addDay: self createYomShishi.
	self addDay: self createYomShabbat