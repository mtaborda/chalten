instance creation
year: aYear month: aMonth

	aMonth assertIsValidIn: aYear.
	^self new initializeYear: aYear month: aMonth