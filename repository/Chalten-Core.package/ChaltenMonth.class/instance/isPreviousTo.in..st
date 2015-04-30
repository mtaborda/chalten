testing
isPreviousTo: aMonth in: aYear

	| stream |
	
	stream := CircularReadStream
		on: aYear arrayOfMonths
		moving: TimeUnits month
		startingCircleAt: calendar firstMonth.
	^stream isPrevious: self to: aMonth