initialize - private
initializeMillisecond

	millisecond := ProportionalDerivedUnit 
		baseUnit: day 
		conversionFactor: 1/(1000*60*60*24)
		named: 'millisecond'