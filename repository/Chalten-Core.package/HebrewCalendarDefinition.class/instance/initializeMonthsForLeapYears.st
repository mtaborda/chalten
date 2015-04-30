initialization
initializeMonthsForLeapYears

	leapYearsMonths := Array new: 13.
	self addLeapYearMonth: self nisan.
	self addLeapYearMonth: self iyyar.
	self addLeapYearMonth: self sivan.
	self addLeapYearMonth: self tammuz.
	self addLeapYearMonth: self av.
	self addLeapYearMonth: self elul.
	self addLeapYearMonth: self tishri.
	self addLeapYearMonth: self marheshvan.
	self addLeapYearMonth: self kislev.
	self addLeapYearMonth: self tevet.
	self addLeapYearMonth: self shevat.
	self addLeapYearMonth: self createAdarI.
	self addLeapYearMonth: self createAdarII