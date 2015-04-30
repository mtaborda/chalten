initialization
initializeMonthsForNonleapYears

	nonleapYearsMonths := Array new: 12.
	self addNonleapYearMonth: self createNisan.
	self addNonleapYearMonth: self createIyyar.
	self addNonleapYearMonth: self createSivan.
	self addNonleapYearMonth: self createTammuz.
	self addNonleapYearMonth: self createAv.
	self addNonleapYearMonth: self createElul.
	self addNonleapYearMonth: self createTishri.
	self addNonleapYearMonth: self createMarheshvan.
	self addNonleapYearMonth: self createKislev.
	self addNonleapYearMonth: self createTevet.
	self addNonleapYearMonth: self createShevat.
	self addNonleapYearMonth: self createAdar