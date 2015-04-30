initialize - private
initializeHour

	hour := ProportionalDerivedUnit 
		baseUnit: day 
		conversionFactor: 1/24
		named: 'hour'