initialize - private
initializeMinute

	minute := ProportionalDerivedUnit 
		baseUnit: day 
		conversionFactor: 1/(24*60)
		named: 'minute'