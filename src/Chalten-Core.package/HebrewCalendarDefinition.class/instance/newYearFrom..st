year accessing
newYearFrom: aYear
	"Adding the number of elapsed days to the value of the delay determine the day the year begins.
	- Extracted from 'Calendrical Calculations, The Millennium Edition'; page 103."

	| elapsedDays |
	
	elapsedDays := (HebrewElapsedDaysInYear for: aYear) value.
	^epoch + elapsedDays amount + (HebrewNewYearDelay for: aYear) value