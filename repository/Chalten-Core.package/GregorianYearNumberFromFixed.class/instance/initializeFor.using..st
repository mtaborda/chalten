initialization
initializeFor: aNumberOfDays using: aCalendar

	numberOfDays := aNumberOfDays.
	calendar := aCalendar.
	self initializeDaysInCycles.
	self initializeLeapYearCorrection