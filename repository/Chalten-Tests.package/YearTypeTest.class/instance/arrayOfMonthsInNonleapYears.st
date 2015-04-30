test support
arrayOfMonthsInNonleapYears
	
	| array |
	array := Array new: 3.
	array
		at: 1 put: January;
		at: 2 put: February;
		at: 3 put: March.
	^array